.class Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$3;
.super Landroid/content/BroadcastReceiver;
.source "SeslPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->bindPreferences()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;

.field final synthetic val$preferenceScreen:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;

    .prologue
    .line 547
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$3;->this$0:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;

    iput-object p2, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$3;->val$preferenceScreen:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 550
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 551
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.samsung.settings.FONT_SIZE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 552
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$3;->val$preferenceScreen:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;->setTitleFontSize()V

    .line 553
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$3;->val$preferenceScreen:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;->notifyHierarchyChanged()V

    .line 555
    :cond_0
    return-void
.end method
