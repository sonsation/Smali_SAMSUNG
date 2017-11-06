.class Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView$1;
.super Ljava/lang/Object;
.source "InputVoucherCodeView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView$1;->this$0:Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 69
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView$1;->this$0:Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;->access$000(Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "code":Ljava/lang/String;
    const-string v1, "InputVoucherCodeView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setOnClickListener  voucher code is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 72
    const-string v1, "InputVoucherCodeView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setOnEditorActionListener  voucher code is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView$1;->this$0:Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;->access$100(Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;)Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView$OnInputVoucherListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView$OnInputVoucherListener;->OnInputVoucher(Ljava/lang/String;)V

    .line 75
    :cond_0
    return-void
.end method
