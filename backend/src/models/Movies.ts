export interface Movie {
  identity: number;
  labels: Array<String>;
  properties: {
    tagline?: String;
    title: String;
    released: number;
  };
  elementId: String;
}
