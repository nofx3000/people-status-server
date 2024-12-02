import { Context } from "koa";
import path from "path";
import { HNSWLib } from "@langchain/community/vectorstores/hnswlib";
import { ChatOllama, OllamaEmbeddings } from "@langchain/ollama";
import { ConversationalRetrievalQAChain } from "langchain/chains";

export class LLMController {
  static LLMController: LLMController = new LLMController();
  getAdvice = async (ctx: Context) => {
    try {
      const { detail } = ctx.request.body as any;
      console.log(detail);
      const prompt = `下面给我将给你一个人所遇到困难的简单介绍，请你给出解决或缓解这些困难的措施。需要注意以下几点：1.如果有多条，请以列表形式给出。2.文中不要出现"*"、"-"这类标点符号。3.不需要复述或者总结困难，直接给出措施即可。4.不要超过五条。简介：${detail}`;
      // 获取向量数据库路径
      const vectorDbPath = path.join(
        process.cwd(),
        "knowledge_base",
        "16",
        "db_index_16"
      );

      // 初始化 OllamaEmbeddings
      const embeddings = new OllamaEmbeddings({
        baseUrl: "http://127.0.0.1:11434",
        model: "bge-large-embed",
      });

      // 加载 HNSWLib 向量数据库
      const vectorStore = await HNSWLib.load(vectorDbPath, embeddings);

      // 创建检索器
      const retriever = vectorStore.asRetriever();

      // 初始化 ChatOllama 模型
      const model = new ChatOllama({
        baseUrl: "http://127.0.0.1:11434",
        model: "qwen2-7b", // 或者您使用的其他模型名称
        streaming: true,
        callbacks: [
          {
            async handleLLMNewToken(token) {
              console.log("Token received:", token);
              ctx.res.write(`data: ${JSON.stringify({ token })}\n\n`);
              await new Promise((resolve) => setTimeout(resolve, 0));
            },
          },
        ],
      });

      // 创建对话检索链
      const chain = ConversationalRetrievalQAChain.fromLLM(model, retriever, {
        // returnSourceDocuments: true,
      });

      ctx.set({
        "Content-Type": "text/event-stream",
        "Cache-Control": "no-cache",
        Connection: "keep-alive",
      });

      ctx.status = 200;

      await chain.stream({
        question: prompt,
        chat_history: [],
      });

      ctx.res.write("data: [DONE]\n\n");
      ctx.res.end();
    } catch (error) {
      console.error("Error in postDialogue:", error);
      ctx.status = 500;
      ctx.body = { error: "Internal server error" };
    }
  };
  getRiskLevel = async (ctx: Context) => {
    const { detail } = ctx.request.body as any;
    const prompt = `下面给我将给你一个人所遇到困难的简单介绍，请给你给我评定困难的程度，只需要按照严重程度从低到高回复"0"、"1"、"2"。注意不要有任何多余的字符。简介：${detail}`;
    const model = new ChatOllama({
      baseUrl: "http://127.0.0.1:11434",
      model: "qwen2-7b", // 或者您使用的其他模型名称
    });
    const res = await model.invoke(prompt);
    ctx.body = res;
  };
}
export default LLMController.LLMController;
