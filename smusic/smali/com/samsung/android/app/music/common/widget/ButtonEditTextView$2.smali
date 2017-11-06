.class Lcom/samsung/android/app/music/common/widget/ButtonEditTextView$2;
.super Ljava/lang/Object;
.source "ButtonEditTextView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->initListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView$2;->this$0:Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 246
    if-eqz p2, :cond_1

    .line 247
    iget-object v0, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView$2;->this$0:Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->access$300(Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView$2;->this$0:Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->access$400(Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;)V

    .line 255
    .end local p1    # "v":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 251
    .restart local p1    # "v":Landroid/view/View;
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView$2;->this$0:Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;

    check-cast p1, Landroid/widget/EditText;

    .end local p1    # "v":Landroid/view/View;
    invoke-static {v0, p1}, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->access$500(Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;Landroid/widget/EditText;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView$2;->this$0:Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->access$300(Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView$2;->this$0:Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->access$400(Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;)V

    goto :goto_0
.end method
