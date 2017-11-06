.class Lcom/samsung/android/app/music/common/widget/ButtonEditTextView$4;
.super Ljava/lang/Object;
.source "ButtonEditTextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 308
    iput-object p1, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView$4;->this$0:Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 311
    iget-object v0, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView$4;->this$0:Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->access$400(Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;)V

    .line 312
    iget-object v0, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView$4;->this$0:Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->access$300(Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView$4;->this$0:Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->access$200(Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 317
    :goto_0
    return-void

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView$4;->this$0:Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->access$200(Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0
.end method
