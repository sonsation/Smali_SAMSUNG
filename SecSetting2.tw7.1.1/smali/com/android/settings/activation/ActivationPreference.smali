.class public Lcom/android/settings/activation/ActivationPreference;
.super Landroid/preference/Preference;
.source "ActivationPreference.java"


# static fields
.field private static mContext:Landroid/content/Context;


# instance fields
.field private textview:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/settings/activation/ActivationPreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/activation/ActivationPreference;->mContext:Landroid/content/Context;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    sput-object p1, Lcom/android/settings/activation/ActivationPreference;->mContext:Landroid/content/Context;

    .line 46
    const v0, 0x7f040023

    invoke-virtual {p0, v0}, Lcom/android/settings/activation/ActivationPreference;->setLayoutResource(I)V

    .line 43
    return-void
.end method


# virtual methods
.method public makeSummary()V
    .locals 9

    .prologue
    .line 60
    sget-object v5, Lcom/android/settings/activation/ActivationPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "https://support-cn.samsung.com/supportcn/Imei/default.aspx"

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const v7, 0x7f0b12ee

    invoke-virtual {v5, v7, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "dec":Ljava/lang/String;
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 63
    .local v4, "strBuilder":Landroid/text/SpannableStringBuilder;
    const-string/jumbo v5, "https://support-cn.samsung.com/supportcn/Imei/default.aspx"

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 64
    .local v3, "start":I
    const-string/jumbo v5, "https://support-cn.samsung.com/supportcn/Imei/default.aspx"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int v1, v3, v5

    .line 65
    .local v1, "end":I
    new-instance v2, Lcom/android/settings/activation/ActivationPreference$1;

    invoke-direct {v2, p0, v3, v1}, Lcom/android/settings/activation/ActivationPreference$1;-><init>(Lcom/android/settings/activation/ActivationPreference;II)V

    .line 81
    .local v2, "myActivityLauncher":Landroid/text/style/ClickableSpan;
    const/16 v5, 0x21

    invoke-virtual {v4, v2, v3, v1, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 82
    iget-object v5, p0, Lcom/android/settings/activation/ActivationPreference;->textview:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v5, p0, Lcom/android/settings/activation/ActivationPreference;->textview:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 84
    iget-object v5, p0, Lcom/android/settings/activation/ActivationPreference;->textview:Landroid/widget/TextView;

    const v6, 0x7f1002aa

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/activation/ActivationPreference;->notifyChanged()V

    .line 59
    return-void
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 52
    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/activation/ActivationPreference;->textview:Landroid/widget/TextView;

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/activation/ActivationPreference;->makeSummary()V

    .line 55
    const v0, 0x7f0d017d

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 50
    return-void
.end method
