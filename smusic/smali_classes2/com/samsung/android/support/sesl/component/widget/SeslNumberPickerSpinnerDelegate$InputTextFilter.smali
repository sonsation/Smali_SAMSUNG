.class Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$InputTextFilter;
.super Landroid/text/method/NumberKeyListener;
.source "SeslNumberPickerSpinnerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InputTextFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    .prologue
    .line 2545
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 9
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .prologue
    const/4 v5, 0x0

    .line 2560
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$1800(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)[Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    .line 2561
    invoke-super/range {p0 .. p6}, Landroid/text/method/NumberKeyListener;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2562
    .local v0, "filtered":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .line 2563
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2566
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4, v5, p5}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2567
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v6

    invoke-interface {p4, p6, v6}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2569
    .local v1, "result":Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v1

    .line 2607
    :goto_0
    return-object v4

    .line 2572
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v4, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$1900(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;Ljava/lang/String;)I

    move-result v3

    .line 2581
    .local v3, "val":I
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$2000(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v4

    if-gt v3, v4, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$2000(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v7

    invoke-static {v6, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$2100(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-le v4, v6, :cond_4

    .line 2582
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$300(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2583
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$2200(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 2585
    :cond_3
    const-string v4, ""

    goto :goto_0

    :cond_4
    move-object v4, v0

    .line 2587
    goto :goto_0

    .line 2590
    .end local v0    # "filtered":Ljava/lang/CharSequence;
    .end local v1    # "result":Ljava/lang/String;
    .end local v3    # "val":I
    :cond_5
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2591
    .restart local v0    # "filtered":Ljava/lang/CharSequence;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4, v5, p5}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2592
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v6

    invoke-interface {p4, p6, v6}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2593
    .restart local v1    # "result":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 2594
    .local v2, "str":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$1800(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v4, v5

    :goto_1
    if-ge v4, v7, :cond_8

    aget-object v3, v6, v4

    .line 2595
    .local v3, "val":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 2596
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v8}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$2300(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 2597
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    move-object v4, v0

    .line 2598
    goto/16 :goto_0

    .line 2600
    :cond_6
    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    move-object v4, v0

    .line 2601
    goto/16 :goto_0

    .line 2594
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2604
    .end local v3    # "val":Ljava/lang/String;
    :cond_8
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$300(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 2605
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$2200(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 2607
    :cond_9
    const-string v4, ""

    goto/16 :goto_0
.end method

.method protected getAcceptedChars()[C
    .locals 1

    .prologue
    .line 2554
    invoke-static {}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$1700()[C

    move-result-object v0

    return-object v0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 2549
    const/4 v0, 0x1

    return v0
.end method
