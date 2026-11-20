import tkinter as tk

# 1. Create the main application window
root = tk.Tk()
root.title("Hello World App")
root.geometry("300x100")  # Optional: width x height in pixels

# 2. Create a Label widget and place it in the window
label = tk.Label(root, text="Hello, World!", font=("Arial", 14))
label.pack(pady=20)

# 3. Run the application event loop
root.mainloop()

