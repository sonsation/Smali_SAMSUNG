.class Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$InputTextFilter;
.super Landroid/text/method/NumberKeyListener;
.source "SemNumberPickerSpinnerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InputTextFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;


# direct methods
.method constructor <init>(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    .prologue
    .line 2571
    iput-object p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

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
    .line 2586
    iget-object v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v5}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get7(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)[Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_5

    .line 2587
    invoke-super/range {p0 .. p6}, Landroid/text/method/NumberKeyListener;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2588
    .local v0, "filtered":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .line 2589
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2592
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-interface {p4, v6, p5}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2593
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v6

    invoke-interface {p4, p6, v6}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    .line 2592
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2595
    .local v1, "result":Ljava/lang/String;
    const-string/jumbo v5, ""

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2596
    return-object v1

    .line 2598
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v5, v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-wrap3(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;Ljava/lang/String;)I

    move-result v3

    .line 2607
    .local v3, "val":I
    iget-object v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v5}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get16(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v5

    if-gt v3, v5, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v7, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v7}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get16(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v7

    invoke-static {v6, v7}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-wrap5(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-le v5, v6, :cond_4

    .line 2608
    :cond_2
    iget-object v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v5}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get12(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2609
    iget-object v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v5, v5, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v6}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get22(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 2611
    :cond_3
    const-string/jumbo v5, ""

    return-object v5

    .line 2613
    :cond_4
    return-object v0

    .line 2616
    .end local v0    # "filtered":Ljava/lang/CharSequence;
    .end local v1    # "result":Ljava/lang/String;
    .end local v3    # "val":I
    :cond_5
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2617
    .restart local v0    # "filtered":Ljava/lang/CharSequence;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-interface {p4, v6, p5}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2618
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v6

    invoke-interface {p4, p6, v6}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    .line 2617
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2619
    .restart local v1    # "result":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 2620
    .local v2, "str":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v5}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get7(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)[Ljava/lang/String;

    move-result-object v6

    const/4 v5, 0x0

    array-length v7, v6

    :goto_0
    if-ge v5, v7, :cond_8

    aget-object v4, v6, v5

    .line 2621
    .local v4, "val":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 2622
    iget-object v8, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v8}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-wrap2(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 2623
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 2624
    return-object v0

    .line 2626
    :cond_6
    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 2627
    return-object v0

    .line 2620
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2630
    .end local v4    # "val":Ljava/lang/String;
    :cond_8
    iget-object v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v5}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get12(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 2633
    :cond_9
    :goto_1
    const-string/jumbo v5, ""

    return-object v5

    .line 2631
    :cond_a
    iget-object v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v5, v5, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v6}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get22(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method protected getAcceptedChars()[C
    .locals 1

    .prologue
    .line 2580
    invoke-static {}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get0()[C

    move-result-object v0

    return-object v0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 2575
    const/4 v0, 0x1

    return v0
.end method
