.class public Lcom/samsung/android/app/music/milk/MilkToast;
.super Ljava/lang/Object;
.source "MilkToast.java"


# static fields
.field private static lastToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/app/music/milk/MilkToast;->lastToast:Landroid/widget/Toast;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeText(Landroid/content/Context;II)Landroid/widget/Toast;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "stringResId"    # I
    .param p2, "duration"    # I

    .prologue
    .line 27
    const v0, 0x7f04011d

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, p2}, Lcom/samsung/android/app/music/milk/MilkToast;->makeText(Landroid/content/Context;ILjava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public static makeText(Landroid/content/Context;III)Landroid/widget/Toast;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "layoutResID"    # I
    .param p2, "msgResId"    # I
    .param p3, "duration"    # I

    .prologue
    .line 45
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Lcom/samsung/android/app/music/milk/MilkToast;->makeText(Landroid/content/Context;ILjava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public static makeText(Landroid/content/Context;ILjava/lang/CharSequence;I)Landroid/widget/Toast;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "layoutResID"    # I
    .param p2, "msg"    # Ljava/lang/CharSequence;
    .param p3, "duration"    # I

    .prologue
    const v5, 0x7f120363

    const v8, 0x7f0d05f8

    const/16 v7, 0x51

    const/4 v6, 0x0

    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 51
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 52
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const/4 v4, 0x0

    invoke-virtual {v0, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 55
    .local v1, "layout":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v4

    if-ne v4, v5, :cond_0

    move-object v2, v1

    .line 56
    check-cast v2, Landroid/widget/TextView;

    .line 62
    .local v2, "textView":Landroid/widget/TextView;
    :goto_0
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-ge v4, v5, :cond_2

    .line 64
    sget-object v4, Lcom/samsung/android/app/music/milk/MilkToast;->lastToast:Landroid/widget/Toast;

    if-nez v4, :cond_1

    .line 65
    new-instance v4, Landroid/widget/Toast;

    invoke-direct {v4, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/samsung/android/app/music/milk/MilkToast;->lastToast:Landroid/widget/Toast;

    .line 66
    sget-object v4, Lcom/samsung/android/app/music/milk/MilkToast;->lastToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 67
    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 66
    invoke-virtual {v4, v7, v6, v5}, Landroid/widget/Toast;->setGravity(III)V

    .line 68
    sget-object v4, Lcom/samsung/android/app/music/milk/MilkToast;->lastToast:Landroid/widget/Toast;

    invoke-virtual {v4, p3}, Landroid/widget/Toast;->setDuration(I)V

    .line 69
    sget-object v4, Lcom/samsung/android/app/music/milk/MilkToast;->lastToast:Landroid/widget/Toast;

    invoke-virtual {v4, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 90
    :goto_1
    sget-object v4, Lcom/samsung/android/app/music/milk/MilkToast;->lastToast:Landroid/widget/Toast;

    return-object v4

    .line 58
    .end local v2    # "textView":Landroid/widget/TextView;
    :cond_0
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .restart local v2    # "textView":Landroid/widget/TextView;
    goto :goto_0

    .line 72
    :cond_1
    sget-object v4, Lcom/samsung/android/app/music/milk/MilkToast;->lastToast:Landroid/widget/Toast;

    invoke-virtual {v4, p3}, Landroid/widget/Toast;->setDuration(I)V

    .line 73
    sget-object v4, Lcom/samsung/android/app/music/milk/MilkToast;->lastToast:Landroid/widget/Toast;

    invoke-virtual {v4, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    goto :goto_1

    .line 77
    :cond_2
    new-instance v3, Landroid/widget/Toast;

    invoke-direct {v3, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 78
    .local v3, "toast":Landroid/widget/Toast;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 79
    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 78
    invoke-virtual {v3, v7, v6, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 80
    invoke-virtual {v3, p3}, Landroid/widget/Toast;->setDuration(I)V

    .line 81
    invoke-virtual {v3, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 84
    sget-object v4, Lcom/samsung/android/app/music/milk/MilkToast;->lastToast:Landroid/widget/Toast;

    if-eqz v4, :cond_3

    .line 85
    sget-object v4, Lcom/samsung/android/app/music/milk/MilkToast;->lastToast:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->cancel()V

    .line 88
    :cond_3
    sput-object v3, Lcom/samsung/android/app/music/milk/MilkToast;->lastToast:Landroid/widget/Toast;

    goto :goto_1
.end method

.method public static makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/CharSequence;
    .param p2, "duration"    # I

    .prologue
    .line 31
    const v0, 0x7f04011d

    invoke-static {p0, v0, p1, p2}, Lcom/samsung/android/app/music/milk/MilkToast;->makeText(Landroid/content/Context;ILjava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public static makeText(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;I)Landroid/widget/Toast;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "duration"    # I
    .param p3, "coloredMsg"    # Ljava/lang/String;
    .param p4, "color"    # I

    .prologue
    const v5, 0x7f04011d

    .line 35
    invoke-virtual {p1, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 36
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 37
    invoke-static {p0, v5, p1, p2}, Lcom/samsung/android/app/music/milk/MilkToast;->makeText(Landroid/content/Context;ILjava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 41
    :goto_0
    return-object v2

    .line 39
    :cond_0
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 40
    .local v1, "span":Landroid/text/SpannableString;
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, p4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v0

    const/16 v4, 0x21

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 41
    invoke-static {p0, v5, v1, p2}, Lcom/samsung/android/app/music/milk/MilkToast;->makeText(Landroid/content/Context;ILjava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    goto :goto_0
.end method

.method public static showRadioToastWithinDuration(Landroid/content/Context;II)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "stringResId"    # I
    .param p2, "duration"    # I

    .prologue
    const v7, 0x7f120363

    .line 101
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 102
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f04011d

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 105
    .local v2, "layout":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v5

    if-ne v5, v7, :cond_0

    move-object v3, v2

    .line 106
    check-cast v3, Landroid/widget/TextView;

    .line 111
    .local v3, "textView":Landroid/widget/TextView;
    :goto_0
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(I)V

    .line 113
    new-instance v4, Landroid/widget/Toast;

    invoke-direct {v4, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 114
    .local v4, "toast":Landroid/widget/Toast;
    const/16 v5, 0x51

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d05f8

    .line 115
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 114
    invoke-virtual {v4, v5, v6, v7}, Landroid/widget/Toast;->setGravity(III)V

    .line 116
    invoke-virtual {v4, p2}, Landroid/widget/Toast;->setDuration(I)V

    .line 117
    invoke-virtual {v4, v2}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 120
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 121
    .local v0, "handler":Landroid/os/Handler;
    new-instance v5, Lcom/samsung/android/app/music/milk/MilkToast$1;

    invoke-direct {v5, v4}, Lcom/samsung/android/app/music/milk/MilkToast$1;-><init>(Landroid/widget/Toast;)V

    int-to-long v6, p2

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 127
    return-void

    .line 108
    .end local v0    # "handler":Landroid/os/Handler;
    .end local v3    # "textView":Landroid/widget/TextView;
    .end local v4    # "toast":Landroid/widget/Toast;
    :cond_0
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .restart local v3    # "textView":Landroid/widget/TextView;
    goto :goto_0
.end method
