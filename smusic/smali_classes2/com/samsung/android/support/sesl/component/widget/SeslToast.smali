.class public Lcom/samsung/android/support/sesl/component/widget/SeslToast;
.super Landroid/widget/Toast;
.source "SeslToast.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 56
    return-void
.end method

.method public static makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/samsung/android/support/sesl/component/widget/SeslToast;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "duration"    # I

    .prologue
    .line 69
    new-instance v1, Lcom/samsung/android/support/sesl/component/widget/SeslToast;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToast;-><init>(Landroid/content/Context;)V

    .line 71
    .local v1, "result":Lcom/samsung/android/support/sesl/component/widget/SeslToast;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 72
    .local v0, "inflate":Landroid/view/LayoutInflater;
    sget v4, Lcom/samsung/android/support/sesl/R$layout;->sesl_transient_notification:I

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 74
    .local v3, "v":Landroid/view/View;
    new-instance v4, Lcom/samsung/android/support/sesl/component/widget/SeslToast$1;

    invoke-direct {v4, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslToast$1;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslToast;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 82
    sget v4, Lcom/samsung/android/support/sesl/R$id;->message:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 83
    .local v2, "tv":Landroid/widget/TextView;
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    invoke-virtual {v1, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslToast;->setView(Landroid/view/View;)V

    .line 86
    invoke-virtual {v1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslToast;->setDuration(I)V

    .line 88
    return-object v1
.end method

.method public static makeTextForTooltip(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/samsung/android/support/sesl/component/widget/SeslToast;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "duration"    # I

    .prologue
    .line 93
    new-instance v1, Lcom/samsung/android/support/sesl/component/widget/SeslToast;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToast;-><init>(Landroid/content/Context;)V

    .line 95
    .local v1, "result":Lcom/samsung/android/support/sesl/component/widget/SeslToast;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 96
    .local v0, "inflate":Landroid/view/LayoutInflater;
    sget v4, Lcom/samsung/android/support/sesl/R$layout;->sesl_transient_notification_actionbar:I

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 98
    .local v3, "v":Landroid/view/View;
    new-instance v4, Lcom/samsung/android/support/sesl/component/widget/SeslToast$2;

    invoke-direct {v4, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslToast$2;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslToast;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 106
    sget v4, Lcom/samsung/android/support/sesl/R$id;->message:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 107
    .local v2, "tv":Landroid/widget/TextView;
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    invoke-virtual {v1, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslToast;->setView(Landroid/view/View;)V

    .line 110
    invoke-virtual {v1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslToast;->setDuration(I)V

    .line 112
    return-object v1
.end method

.method public static twMakeTextForTooltip(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "duration"    # I

    .prologue
    .line 117
    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 118
    .local v0, "t":Landroid/widget/Toast;
    invoke-static {v0, p0, p1, p2}, Lcom/samsung/android/support/sesl/core/widget/SeslToastReflector;->twMakeText(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/CharSequence;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Toast;

    return-object v1
.end method
