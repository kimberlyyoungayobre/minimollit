@State private var count = 0

var body: some View {
    Text("Count: \(count)")
    Button("Increment") {
        count += 1
    }
    .padding()
    .background(Color.blue)
    .foregroundColor(.white)
    .cornerRadius(10)
    .padding()
    .overlay(
        RoundedRectangle(cornerRadius: 10)
            .stroke(Color.blue, lineWidth: 2)
    )
    .padding()
    .onAppear {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            count = 10
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(count: .constant(5))
    }
}
