.class Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog$1;
.super Landroid/os/Handler;
.source "SeslProgressDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog$1;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 152
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 155
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog$1;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;

    invoke-static {v6}, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->access$000(Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;)Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->getProgress()I

    move-result v4

    .line 156
    .local v4, "progress":I
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog$1;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;

    invoke-static {v6}, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->access$000(Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;)Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->getMax()I

    move-result v1

    .line 157
    .local v1, "max":I
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog$1;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;

    invoke-static {v6}, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->access$100(Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 158
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog$1;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;

    invoke-static {v6}, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->access$100(Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;)Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "format":Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog$1;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;

    invoke-static {v6}, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->access$200(Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;)Landroid/widget/TextView;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 160
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog$1;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;

    invoke-static {v6}, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->access$200(Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;)Landroid/widget/TextView;

    move-result-object v6

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    .end local v0    # "format":Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog$1;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;

    invoke-static {v6}, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->access$300(Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;)Ljava/text/NumberFormat;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 168
    int-to-double v6, v4

    int-to-double v8, v1

    div-double v2, v6, v8

    .line 169
    .local v2, "percent":D
    new-instance v5, Landroid/text/SpannableString;

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog$1;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;

    .line 170
    invoke-static {v6}, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->access$300(Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;)Ljava/text/NumberFormat;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 171
    .local v5, "tmp":Landroid/text/SpannableString;
    new-instance v6, Landroid/text/style/StyleSpan;

    invoke-direct {v6, v10}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 172
    invoke-virtual {v5}, Landroid/text/SpannableString;->length()I

    move-result v7

    const/16 v8, 0x21

    .line 171
    invoke-virtual {v5, v6, v10, v7, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 173
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog$1;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;

    invoke-static {v6}, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->access$400(Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    .end local v2    # "percent":D
    .end local v5    # "tmp":Landroid/text/SpannableString;
    :goto_1
    return-void

    .line 162
    .restart local v0    # "format":Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog$1;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;

    invoke-static {v6}, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->access$200(Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;)Landroid/widget/TextView;

    move-result-object v6

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 165
    .end local v0    # "format":Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog$1;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;

    invoke-static {v6}, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->access$200(Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;)Landroid/widget/TextView;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 175
    :cond_2
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog$1;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;

    invoke-static {v6}, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->access$400(Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;)Landroid/widget/TextView;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
