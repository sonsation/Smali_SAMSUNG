.class Lcom/android/settings/inputmethod/VirtualKeyboardFragment$3;
.super Ljava/lang/Object;
.source "VirtualKeyboardFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/inputmethod/VirtualKeyboardFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/inputmethod/VirtualKeyboardFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/inputmethod/VirtualKeyboardFragment;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment$3;->this$0:Lcom/android/settings/inputmethod/VirtualKeyboardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment$3;->this$0:Lcom/android/settings/inputmethod/VirtualKeyboardFragment;

    invoke-static {v0}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->-wrap0(Lcom/android/settings/inputmethod/VirtualKeyboardFragment;)V

    .line 90
    return-void
.end method
