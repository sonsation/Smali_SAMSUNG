.class Lcom/android/settings/notification/NotificationSettingsBase$2;
.super Ljava/lang/Object;
.source "NotificationSettingsBase.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/NotificationSettingsBase;->setupImportancePrefs(ZZIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/NotificationSettingsBase;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/NotificationSettingsBase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/notification/NotificationSettingsBase;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/settings/notification/NotificationSettingsBase$2;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 228
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 232
    .local v0, "blocked":Z
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 234
    .local v1, "importance":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettingsBase$2;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    iget-object v2, v2, Lcom/android/settings/notification/NotificationSettingsBase;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v4, p0, Lcom/android/settings/notification/NotificationSettingsBase$2;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    iget-object v4, v4, Lcom/android/settings/notification/NotificationSettingsBase;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/notification/NotificationSettingsBase$2;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    iget v5, v5, Lcom/android/settings/notification/NotificationSettingsBase;->mUid:I

    invoke-virtual {v2, v4, v5, v1}, Lcom/android/settings/notification/NotificationBackend;->setImportance(Ljava/lang/String;II)Z

    .line 235
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettingsBase$2;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    invoke-virtual {v2, v1}, Lcom/android/settings/notification/NotificationSettingsBase;->updateDependents(I)V

    .line 237
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettingsBase$2;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    iget-object v4, v2, Lcom/android/settings/notification/NotificationSettingsBase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettingsBase$2;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    invoke-virtual {v2}, Lcom/android/settings/notification/NotificationSettingsBase;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 238
    const v5, 0x7f0f0155

    .line 237
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 238
    if-nez v0, :cond_1

    move v2, v3

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 237
    invoke-static {v4, v5, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 240
    return v3

    .line 232
    .end local v1    # "importance":I
    :cond_0
    const/16 v1, -0x3e8

    .restart local v1    # "importance":I
    goto :goto_0

    .line 238
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method
