export interface Person {
  identity: number;
  labels: Array<String>;
  properties: {
    born?: number;
    name: String;
    lastLoggedInAt: any;
  };
  elementId: String;
}
