interface MyTestInterface {
  hello(world: string): void;
}

export class TestClass implements MyTestInterface {
  hello(world: string): void {
    throw new Error("Method not implemented.");
  }
}