.class Lcom/android/settings/activation/ActivationPreference$1;
.super Landroid/text/style/ClickableSpan;
.source "ActivationPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/activation/ActivationPreference;->makeSummary()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/activation/ActivationPreference;

.field final synthetic val$end:I

.field final synthetic val$start:I


# direct methods
.method constructor <init>(Lcom/android/settings/activation/ActivationPreference;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/activation/ActivationPreference;
    .param p2, "val$start"    # I
    .param p3, "val$end"    # I

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/settings/activation/ActivationPreference$1;->this$0:Lcom/android/settings/activation/ActivationPreference;

    iput p2, p0, Lcom/android/settings/activation/ActivationPreference$1;->val$start:I

    iput p3, p0, Lcom/android/settings/activation/ActivationPreference$1;->val$end:I

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    move-object v1, p1

    .line 68
    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    iget v2, p0, Lcom/android/settings/activation/ActivationPreference$1;->val$start:I

    iget v3, p0, Lcom/android/settings/activation/ActivationPreference$1;->val$end:I

    invoke-static {v1, v2, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 71
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 72
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    const-string/jumbo v1, "https://support-cn.samsung.com/supportcn/Imei/default.aspx"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 74
    invoke-static {}, Lcom/android/settings/activation/ActivationPreference;->-get0()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    invoke-static {}, Lcom/android/settings/activation/ActivationPreference;->-get0()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 66
    :cond_0
    return-void
.end method
