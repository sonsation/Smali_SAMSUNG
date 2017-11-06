.class Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView$2;
.super Ljava/lang/Object;
.source "InputVoucherCodeView.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 82
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView$2;->this$0:Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 7
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/4 v4, 0x1

    const/16 v6, 0x32

    const/4 v5, 0x0

    .line 96
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "after_text":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v6, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView$2;->this$0:Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;

    .line 98
    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;->access$200(Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;)Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 99
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView$2;->this$0:Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;

    .line 100
    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;->access$200(Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a03f8

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    .line 101
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 99
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "msg":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView$2;->this$0:Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;->access$200(Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1, v5}, Lcom/samsung/android/app/music/milk/MilkToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 105
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-interface {p1, v6, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 111
    .end local v1    # "msg":Ljava/lang/String;
    :goto_0
    return-void

    .line 106
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 107
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView$2;->this$0:Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;

    invoke-static {v2, v5}, Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;->access$300(Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;Z)V

    goto :goto_0

    .line 109
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView$2;->this$0:Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;

    invoke-static {v2, v4}, Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;->access$300(Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;Z)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 86
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 91
    return-void
.end method
