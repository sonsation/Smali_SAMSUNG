.class Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView$3;
.super Ljava/lang/Object;
.source "InputVoucherCodeView.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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
    .line 114
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView$3;->this$0:Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    .line 117
    const/4 v3, 0x6

    if-eq p2, v3, :cond_0

    const/4 v3, 0x5

    if-ne p2, v3, :cond_2

    .line 121
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView$3;->this$0:Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;->access$200(Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "input_method"

    .line 122
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 123
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView$3;->this$0:Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;->access$000(Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 125
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView$3;->this$0:Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;->access$000(Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "code":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 128
    const-string v2, "InputVoucherCodeView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setOnEditorActionListener voucher code is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView$3;->this$0:Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;->access$100(Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;)Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView$OnInputVoucherListener;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView$OnInputVoucherListener;->OnInputVoucher(Ljava/lang/String;)V

    .line 131
    :cond_1
    const/4 v2, 0x1

    .line 133
    .end local v0    # "code":Ljava/lang/String;
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_2
    return v2
.end method
