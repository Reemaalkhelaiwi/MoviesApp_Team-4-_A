import SwiftUI

struct SignInView: View {

    @State private var email = ""
    @State private var password = ""

    var body: some View {
        ZStack {

            // Background image
            Image("signinbackground")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()

            // Overlay layer from Assets
            Image("layersignin")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .opacity(0.95)

            VStack(alignment: .leading, spacing: 16) {

                Spacer()

                Text("Sign in")
                    .font(.system(size: 34, weight: .bold))
                    .foregroundStyle(Color("white"))

                Text("You'll find what you're looking for in the ocean of movies")
                    .font(.system(size: 14))
                    .foregroundStyle(Color("grey"))

                // Email
                Text("Email")
                    .font(.system(size: 12, weight: .medium))
                    .foregroundStyle(Color("grey"))

                TextField("Academy23@gmail.com", text: $email)
                    .padding(.vertical, 14)
                    .padding(.horizontal, 14)
                    .background(Color("black").opacity(0.55))
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .foregroundStyle(Color("white"))

                // Password
                Text("Password")
                    .font(.system(size: 12, weight: .medium))
                    .foregroundStyle(Color("grey"))

                HStack {
                    SecureField("N346455_4", text: $password)
                        .foregroundStyle(Color("white"))

                    Button(action: {}) {
                        Image(systemName: "eye")
                            .foregroundStyle(Color("grey"))
                    }
                }
                .padding(.vertical, 14)
                .padding(.horizontal, 14)
                .background(Color("black").opacity(0.55))
                .clipShape(RoundedRectangle(cornerRadius: 10))

                // Sign in button
                Button(action: {}) {
                    Text("Sign in")
                        .font(.system(size: 16, weight: .semibold))
                        .foregroundStyle(Color("black"))
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 14)
                        .background(Color("gold"))
                        .clipShape(RoundedRectangle(cornerRadius: 14))
                }
                .padding(.top, 10)

                Spacer(minLength: 40)
            }
            .padding(.horizontal, 24)
        }
    }
}

#Preview {
    SignInView()
}
