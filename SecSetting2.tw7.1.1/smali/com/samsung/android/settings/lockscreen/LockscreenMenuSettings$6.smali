.class Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$6;
.super Ljava/lang/Object;
.source "LockscreenMenuSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->initLockscreenNotificationsForProfile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    .prologue
    .line 855
    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$6;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 858
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 859
    .local v2, "val":I
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$6;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get15(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 860
    return v5

    .line 863
    :cond_0
    const v3, 0x7f0b1c95

    if-eq v2, v3, :cond_2

    const/4 v0, 0x1

    .line 865
    .local v0, "enabled":Z
    :goto_0
    const v3, 0x7f0b1c93

    if-ne v2, v3, :cond_3

    const/4 v1, 0x1

    .line 866
    .local v1, "show":Z
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$6;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-wrap0(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/content/ContentResolver;

    move-result-object v6

    .line 867
    const-string/jumbo v7, "lock_screen_allow_private_notifications"

    .line 868
    if-eqz v1, :cond_4

    move v3, v4

    :goto_2
    iget-object v8, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$6;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get16(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)I

    move-result v8

    .line 866
    invoke-static {v6, v7, v3, v8}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 869
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$6;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-wrap0(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/content/ContentResolver;

    move-result-object v3

    .line 870
    const-string/jumbo v6, "lock_screen_show_notifications"

    .line 871
    if-eqz v0, :cond_1

    move v5, v4

    :cond_1
    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$6;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get16(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)I

    move-result v7

    .line 869
    invoke-static {v3, v6, v5, v7}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 872
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$6;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v3, v2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-set2(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;I)I

    .line 874
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$6;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0f0234

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-set1(I)I

    .line 875
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$6;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get2()I

    move-result v5

    invoke-static {v3, v5}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    .line 876
    return v4

    .line 863
    .end local v0    # "enabled":Z
    .end local v1    # "show":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_0

    .line 865
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "show":Z
    goto :goto_1

    :cond_4
    move v3, v5

    .line 868
    goto :goto_2
.end method
