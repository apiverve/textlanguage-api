declare module '@apiverve/textlanguage' {
  export interface textlanguageOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface textlanguageResponse {
    status: string;
    error: string | null;
    data: TextLanguageData;
    code?: number;
  }


  interface TextLanguageData {
      language: string;
      iso:      string;
  }

  export default class textlanguageWrapper {
    constructor(options: textlanguageOptions);

    execute(callback: (error: any, data: textlanguageResponse | null) => void): Promise<textlanguageResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: textlanguageResponse | null) => void): Promise<textlanguageResponse>;
    execute(query?: Record<string, any>): Promise<textlanguageResponse>;
  }
}
