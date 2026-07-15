declare module '@apiverve/textlanguage' {
  export interface textlanguageOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface textlanguageResponse {
    status: string;
    error: string | null;
    data: TextLanguageData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface TextLanguageData {
      language: null | string;
      iso:      null | string;
  }

  export default class textlanguageWrapper {
    constructor(options: textlanguageOptions);

    execute(callback: (error: any, data: textlanguageResponse | null) => void): Promise<textlanguageResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: textlanguageResponse | null) => void): Promise<textlanguageResponse>;
    execute(query?: Record<string, any>): Promise<textlanguageResponse>;
  }
}
