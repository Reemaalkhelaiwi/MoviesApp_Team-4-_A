import SwiftUI

struct SignInView: View {

    @State private var email = ""
    @State private var password = ""

    var body: some View {
        ZStack {

            // Background image
            Image("signinbackground")
                .resizable()
                .scaledToFit()
                .ignoresSafeArea()
                .offset(y: -50)   // move UP
                .offset(x: 50)    // move RIGHT
                .offset(x: -50)

            Image("layersignin")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .opacity(1)
              
            VStack(alignment: .leading, spacing: 17) {

                Spacer()

                Text("Sign in")
                    .font(.system(size: 40, weight: .bold))
                    .foregroundStyle(Color("white"))

                Text("You'll find what you're looking for in the ocean of movies")
                    .font(.system(size: 18))
                    .foregroundStyle(Color("white"))

                // Email
                Text("Email")
                    .font(.system(size: 18, weight: .medium))
                    .foregroundStyle(Color("gray1"))

                TextField("Academy23@gmail.com", text: $email)
                    .padding(.vertical, 14)
                    .padding(.horizontal, 14)
                    .background(Color("gray2").opacity(0.26))
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .foregroundStyle(Color("white"))

                // Password
                Text("Password")
                    .font(.system(size: 18, weight: .medium))
                    .foregroundStyle(Color("gray1"))

                HStack {
                    SecureField("N346455_4", text: $password)
                        .foregroundStyle(Color("white"))

                    Button(action: {}) {
                        Image(systemName: "eye")
                            .foregroundStyle(Color.gray)
                    }
                }
                .padding(.vertical, 14)
                .padding(.horizontal, 14)
                .background(Color("gray2").opacity(0.26))
                .clipShape(RoundedRectangle(cornerRadius: 10))

                // Sign in button
                Button(action: {}) {
                    Text("Sign in")
                        .font(.system(size: 20, weight: .semibold))
                        .foregroundStyle(Color("black"))
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 14)
                        .background(Color("gray1"))
                        .clipShape(RoundedRectangle(cornerRadius: 14))
                }
                .padding(.top, 10)

                Spacer(minLength: 40)
            }
            .padding(.horizontal, 24)
            .offset(y: 170)
        }
    }
}

#Preview {
    SignInView()
}
