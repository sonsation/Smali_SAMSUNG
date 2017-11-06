.class public Lcom/samsung/android/app/music/common/activity/AboutPolicyActivity;
.super Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;
.source "AboutPolicyActivity.java"


# static fields
.field public static final ARGS_POLICY_TYPE:Ljava/lang/String; = "policy_type"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const v4, 0x7f04001f

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/common/activity/AboutPolicyActivity;->setContentView(I)V

    .line 19
    const v4, 0x7f1200f8

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/common/activity/AboutPolicyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 21
    .local v2, "detailPolicyText":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/AboutPolicyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 22
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/AboutPolicyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 24
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v4, "policy_type"

    const/4 v5, -0x1

    .line 25
    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 26
    .local v3, "policyTypeId":I
    invoke-static {v1, v3}, Lcom/samsung/android/app/music/common/activity/AboutPolicyTextLoader;->loadTitle(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/common/activity/AboutPolicyActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 27
    invoke-static {v1, v3}, Lcom/samsung/android/app/music/common/activity/AboutPolicyTextLoader;->loadText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    return-void
.end method
