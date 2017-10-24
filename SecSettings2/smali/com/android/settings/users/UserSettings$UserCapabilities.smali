.class Lcom/android/settings/users/UserSettings$UserCapabilities;
.super Ljava/lang/Object;
.source "UserSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/users/UserSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UserCapabilities"
.end annotation


# instance fields
.field mCanAddGuest:Z

.field mCanAddRestrictedProfile:Z

.field mCanAddUser:Z

.field mDisallowAddUser:Z

.field mDisallowAddUserSetByAdmin:Z

.field mEnabled:Z

.field mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field mIsAdmin:Z

.field mIsGuest:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 1183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1173
    iput-boolean v0, p0, Lcom/android/settings/users/UserSettings$UserCapabilities;->mEnabled:Z

    .line 1174
    iput-boolean v0, p0, Lcom/android/settings/users/UserSettings$UserCapabilities;->mCanAddUser:Z

    .line 1175
    iput-boolean v0, p0, Lcom/android/settings/users/UserSettings$UserCapabilities;->mCanAddRestrictedProfile:Z

    .line 1183
    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/android/settings/users/UserSettings$UserCapabilities;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 1186
    const-string/jumbo v4, "user"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 1187
    .local v3, "userManager":Landroid/os/UserManager;
    new-instance v0, Lcom/android/settings/users/UserSettings$UserCapabilities;

    invoke-direct {v0}, Lcom/android/settings/users/UserSettings$UserCapabilities;-><init>()V

    .line 1188
    .local v0, "caps":Lcom/android/settings/users/UserSettings$UserCapabilities;
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1189
    :cond_0
    iput-boolean v5, v0, Lcom/android/settings/users/UserSettings$UserCapabilities;->mEnabled:Z

    .line 1190
    return-object v0

    .line 1193
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 1194
    .local v2, "myUserInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/settings/users/UserSettings$UserCapabilities;->mIsGuest:Z

    .line 1195
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/settings/users/UserSettings$UserCapabilities;->mIsAdmin:Z

    .line 1197
    const-string/jumbo v4, "device_policy"

    .line 1196
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 1199
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->isDeviceManaged()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {p0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1200
    :cond_2
    iput-boolean v5, v0, Lcom/android/settings/users/UserSettings$UserCapabilities;->mCanAddRestrictedProfile:Z

    .line 1202
    :cond_3
    invoke-virtual {v0, p0}, Lcom/android/settings/users/UserSettings$UserCapabilities;->updateAddUserCapabilities(Landroid/content/Context;)V

    .line 1203
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "UserCapabilities{mEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1230
    iget-boolean v1, p0, Lcom/android/settings/users/UserSettings$UserCapabilities;->mEnabled:Z

    .line 1229
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1231
    const-string/jumbo v1, ", mCanAddUser="

    .line 1229
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1231
    iget-boolean v1, p0, Lcom/android/settings/users/UserSettings$UserCapabilities;->mCanAddUser:Z

    .line 1229
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1232
    const-string/jumbo v1, ", mCanAddRestrictedProfile="

    .line 1229
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1232
    iget-boolean v1, p0, Lcom/android/settings/users/UserSettings$UserCapabilities;->mCanAddRestrictedProfile:Z

    .line 1229
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1233
    const-string/jumbo v1, ", mIsAdmin="

    .line 1229
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1233
    iget-boolean v1, p0, Lcom/android/settings/users/UserSettings$UserCapabilities;->mIsAdmin:Z

    .line 1229
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1234
    const-string/jumbo v1, ", mIsGuest="

    .line 1229
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1234
    iget-boolean v1, p0, Lcom/android/settings/users/UserSettings$UserCapabilities;->mIsGuest:Z

    .line 1229
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1235
    const-string/jumbo v1, ", mCanAddGuest="

    .line 1229
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1235
    iget-boolean v1, p0, Lcom/android/settings/users/UserSettings$UserCapabilities;->mCanAddGuest:Z

    .line 1229
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1236
    const-string/jumbo v1, ", mDisallowAddUser="

    .line 1229
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1236
    iget-boolean v1, p0, Lcom/android/settings/users/UserSettings$UserCapabilities;->mDisallowAddUser:Z

    .line 1229
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1237
    const-string/jumbo v1, ", mEnforcedAdmin="

    .line 1229
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1237
    iget-object v1, p0, Lcom/android/settings/users/UserSettings$UserCapabilities;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 1229
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1238
    const/16 v1, 0x7d

    .line 1229
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateAddUserCapabilities(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1208
    const-string/jumbo v2, "no_add_user"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 1207
    invoke-static {p1, v2, v5}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/users/UserSettings$UserCapabilities;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 1210
    const-string/jumbo v2, "no_add_user"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 1209
    invoke-static {p1, v2, v5}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    .line 1212
    .local v1, "hasBaseUserRestriction":Z
    iget-object v2, p0, Lcom/android/settings/users/UserSettings$UserCapabilities;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_6

    :cond_0
    move v2, v3

    .line 1211
    :goto_0
    iput-boolean v2, p0, Lcom/android/settings/users/UserSettings$UserCapabilities;->mDisallowAddUserSetByAdmin:Z

    .line 1214
    iget-object v2, p0, Lcom/android/settings/users/UserSettings$UserCapabilities;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-nez v2, :cond_7

    .line 1213
    .end local v1    # "hasBaseUserRestriction":Z
    :goto_1
    iput-boolean v1, p0, Lcom/android/settings/users/UserSettings$UserCapabilities;->mDisallowAddUser:Z

    .line 1215
    iput-boolean v4, p0, Lcom/android/settings/users/UserSettings$UserCapabilities;->mCanAddUser:Z

    .line 1216
    iget-boolean v2, p0, Lcom/android/settings/users/UserSettings$UserCapabilities;->mIsAdmin:Z

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v2

    const/4 v5, 0x2

    if-ge v2, v5, :cond_8

    .line 1219
    :cond_1
    :goto_2
    iput-boolean v3, p0, Lcom/android/settings/users/UserSettings$UserCapabilities;->mCanAddUser:Z

    .line 1222
    :cond_2
    iget-boolean v2, p0, Lcom/android/settings/users/UserSettings$UserCapabilities;->mIsAdmin:Z

    if-nez v2, :cond_3

    .line 1223
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "add_users_when_locked"

    .line 1222
    invoke-static {v2, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_9

    :cond_3
    const/4 v0, 0x1

    .line 1224
    .local v0, "canAddUsersWhenLocked":Z
    :goto_3
    iget-boolean v2, p0, Lcom/android/settings/users/UserSettings$UserCapabilities;->mIsGuest:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/android/settings/users/UserSettings$UserCapabilities;->mDisallowAddUser:Z

    if-eqz v2, :cond_5

    :cond_4
    move v0, v3

    .end local v0    # "canAddUsersWhenLocked":Z
    :cond_5
    iput-boolean v0, p0, Lcom/android/settings/users/UserSettings$UserCapabilities;->mCanAddGuest:Z

    .line 1206
    return-void

    .restart local v1    # "hasBaseUserRestriction":Z
    :cond_6
    move v2, v4

    .line 1212
    goto :goto_0

    :cond_7
    move v1, v4

    .line 1214
    goto :goto_1

    .line 1217
    .end local v1    # "hasBaseUserRestriction":Z
    :cond_8
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1218
    iget-boolean v2, p0, Lcom/android/settings/users/UserSettings$UserCapabilities;->mDisallowAddUser:Z

    .line 1216
    if-eqz v2, :cond_2

    goto :goto_2

    .line 1222
    :cond_9
    const/4 v0, 0x0

    .restart local v0    # "canAddUsersWhenLocked":Z
    goto :goto_3
.end method
