.class Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AppRestrictionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/users/AppRestrictionsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RestrictionsResultReceiver"
.end annotation


# instance fields
.field invokeIfCustom:Z

.field packageName:Ljava/lang/String;

.field preference:Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

.field final synthetic this$0:Lcom/android/settings/users/AppRestrictionsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/users/AppRestrictionsFragment;Ljava/lang/String;Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/users/AppRestrictionsFragment;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "preference"    # Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;
    .param p4, "invokeIfCustom"    # Z

    .prologue
    .line 759
    iput-object p1, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    .line 761
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 762
    iput-object p2, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->packageName:Ljava/lang/String;

    .line 763
    iput-object p3, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->preference:Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    .line 764
    iput-boolean p4, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->invokeIfCustom:Z

    .line 760
    return-void
.end method

.method private assertSafeToStartCustomActivity(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 793
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 794
    return-void

    .line 797
    :cond_0
    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    iget-object v2, v2, Lcom/android/settings/users/AppRestrictionsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 799
    .local v1, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 800
    return-void

    .line 803
    :cond_1
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 804
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 805
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Application "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 806
    const-string/jumbo v4, " is not allowed to start activity "

    .line 805
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 791
    :cond_2
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 769
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v3

    .line 771
    .local v3, "results":Landroid/os/Bundle;
    const-string/jumbo v4, "android.intent.extra.restrictions_list"

    .line 770
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 772
    .local v1, "restrictions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/RestrictionEntry;>;"
    const-string/jumbo v4, "android.intent.extra.restrictions_intent"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 773
    .local v2, "restrictionsIntent":Landroid/content/Intent;
    if-eqz v1, :cond_1

    if-nez v2, :cond_1

    .line 774
    iget-object v4, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    iget-object v5, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->preference:Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    invoke-static {v4, v5, v1}, Lcom/android/settings/users/AppRestrictionsFragment;->-wrap3(Lcom/android/settings/users/AppRestrictionsFragment;Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;Ljava/util/ArrayList;)V

    .line 775
    iget-object v4, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    iget-boolean v4, v4, Lcom/android/settings/users/AppRestrictionsFragment;->mRestrictedProfile:Z

    if-eqz v4, :cond_0

    .line 776
    iget-object v4, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    iget-object v4, v4, Lcom/android/settings/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v5, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->packageName:Ljava/lang/String;

    .line 777
    invoke-static {v1}, Landroid/content/RestrictionsManager;->convertRestrictionsToBundle(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    iget-object v7, v7, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    .line 776
    invoke-virtual {v4, v5, v6, v7}, Landroid/os/UserManager;->setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 768
    :cond_0
    :goto_0
    return-void

    .line 779
    :cond_1
    if-eqz v2, :cond_0

    .line 780
    iget-object v4, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->preference:Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    invoke-virtual {v4, v1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setRestrictions(Ljava/util/ArrayList;)V

    .line 781
    iget-boolean v4, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->invokeIfCustom:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    invoke-virtual {v4}, Lcom/android/settings/users/AppRestrictionsFragment;->isResumed()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 782
    invoke-direct {p0, v2}, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->assertSafeToStartCustomActivity(Landroid/content/Intent;)V

    .line 783
    iget-object v4, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    .line 784
    iget-object v5, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->preference:Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    .line 783
    invoke-static {v4, v5}, Lcom/android/settings/users/AppRestrictionsFragment;->-wrap0(Lcom/android/settings/users/AppRestrictionsFragment;Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)I

    move-result v0

    .line 785
    .local v0, "requestCode":I
    iget-object v4, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    invoke-virtual {v4, v2, v0}, Lcom/android/settings/users/AppRestrictionsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
