.class Lcom/samsung/android/settings/usefulfeature/Usefulfeature$7;
.super Landroid/database/ContentObserver;
.source "Usefulfeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/usefulfeature/Usefulfeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/usefulfeature/Usefulfeature;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 528
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$7;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v3, 0x0

    .line 531
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$7;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get14(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 532
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$7;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap0(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/content/ContentResolver;

    move-result-object v1

    .line 533
    const-string/jumbo v2, "spam_call_enable"

    .line 532
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 534
    .local v0, "mIdentifyCheck":Z
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$7;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get14(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    if-eqz v0, :cond_2

    const v1, 0x7f0b1d08

    :goto_1
    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 530
    .end local v0    # "mIdentifyCheck":Z
    :cond_0
    return-void

    .line 532
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "mIdentifyCheck":Z
    goto :goto_0

    .line 535
    :cond_2
    const v1, 0x7f0b1d09

    goto :goto_1
.end method