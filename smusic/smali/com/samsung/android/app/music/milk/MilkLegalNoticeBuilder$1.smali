.class final enum Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder$1;
.super Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;
.source "MilkLegalNoticeBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;-><init>(Ljava/lang/String;ILcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder$1;)V

    return-void
.end method


# virtual methods
.method public buildNotice(Landroid/widget/TextView;)V
    .locals 13
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 25
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 27
    .local v0, "context":Landroid/content/Context;
    const v9, 0x7f0a04c2

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 28
    .local v1, "copyRight":Ljava/lang/String;
    const-string v9, "com.samsung.radio.KEY_STORE_DATA_CONFIGS_COPYRIGHT"

    invoke-static {v0, v9, v1}, Lcom/samsung/android/app/music/common/preferences/Pref;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 30
    const-string v9, "line.separator"

    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 31
    .local v2, "lineSeparator":Ljava/lang/String;
    new-instance v9, Landroid/text/SpannableStringBuilder;

    const-string v10, "\\n"

    .line 32
    invoke-virtual {v1, v10, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "\\u00A0"

    const-string v12, " "

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v10, "    "

    invoke-virtual {v9, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    .line 33
    .local v7, "ssb":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v7, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 35
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 36
    .local v6, "res":Landroid/content/res/Resources;
    const v9, 0x7f110168

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 37
    .local v3, "linkTextColor":I
    const v9, 0x7f0a0462

    .line 38
    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 39
    .local v5, "providerInfo":Ljava/lang/String;
    new-instance v9, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder$1$1;

    invoke-direct {v9, p0, v0}, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder$1$1;-><init>(Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder$1;Landroid/content/Context;)V

    invoke-static {v5, v9, v3}, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;->access$100(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;I)Landroid/text/SpannableString;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    const-string v10, "    "

    .line 44
    invoke-virtual {v9, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 46
    const v9, 0x7f0a0463

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 47
    .local v8, "termString":Ljava/lang/String;
    new-instance v9, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder$1$2;

    invoke-direct {v9, p0, v0}, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder$1$2;-><init>(Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder$1;Landroid/content/Context;)V

    invoke-static {v8, v9, v3}, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;->access$100(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;I)Landroid/text/SpannableString;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    const-string v10, "    "

    .line 52
    invoke-virtual {v9, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 54
    const v9, 0x7f0a0461

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 55
    .local v4, "privacy":Ljava/lang/String;
    new-instance v9, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder$1$3;

    invoke-direct {v9, p0, v0}, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder$1$3;-><init>(Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder$1;Landroid/content/Context;)V

    invoke-static {v4, v9, v3}, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;->access$100(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;I)Landroid/text/SpannableString;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 62
    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 64
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;->access$200(Landroid/widget/TextView;)V

    .line 65
    return-void
.end method
