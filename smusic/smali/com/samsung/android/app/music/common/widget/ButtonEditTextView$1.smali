.class Lcom/samsung/android/app/music/common/widget/ButtonEditTextView$1;
.super Ljava/lang/Object;
.source "ButtonEditTextView.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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
    .line 227
    iput-object p1, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView$1;->this$0:Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 230
    packed-switch p2, :pswitch_data_0

    move v0, v1

    .line 238
    :cond_0
    :goto_0
    return v0

    .line 232
    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView$1;->this$0:Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->access$000(Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;)V

    goto :goto_0

    .line 235
    :pswitch_1
    iget-object v2, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView$1;->this$0:Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->access$100(Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;)Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView$1;->this$0:Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->access$100(Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;)Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->access$200(Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 230
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
