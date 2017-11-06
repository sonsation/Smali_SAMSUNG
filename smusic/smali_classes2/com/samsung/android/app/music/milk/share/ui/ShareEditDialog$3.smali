.class Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog$3;
.super Ljava/lang/Object;
.source "ShareEditDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;->showKeypad(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;

.field final synthetic val$imm:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog$3;->this$0:Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog$3;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 218
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog$3;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog$3;->this$0:Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;->access$300(Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 219
    return-void
.end method
