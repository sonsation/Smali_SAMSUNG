.class public Landroid/preference/InfinitySet$PostRun;
.super Ljava/lang/Object;
.source "InfinitySet$PostRun.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private lastValue:Ljava/lang/String;

.field private notifyBroadcast:Z

.field private notifyScript:Z

.field private postList:Ljava/util/List;

.field private pref:Landroid/preference/Preference;

.field private state:Z

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/preference/Preference;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;ZZ)V
    .locals 0

    iput-object p1, p0, Landroid/preference/InfinitySet$PostRun;->pref:Landroid/preference/Preference;

    iput-object p2, p0, Landroid/preference/InfinitySet$PostRun;->lastValue:Ljava/lang/String;

    iput-object p3, p0, Landroid/preference/InfinitySet$PostRun;->value:Ljava/lang/String;

    iput-boolean p4, p0, Landroid/preference/InfinitySet$PostRun;->state:Z

    iput-object p5, p0, Landroid/preference/InfinitySet$PostRun;->postList:Ljava/util/List;

    iput-boolean p6, p0, Landroid/preference/InfinitySet$PostRun;->notifyBroadcast:Z

    iput-boolean p7, p0, Landroid/preference/InfinitySet$PostRun;->notifyScript:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v1, p0, Landroid/preference/InfinitySet$PostRun;->pref:Landroid/preference/Preference;

    iget-object v2, p0, Landroid/preference/InfinitySet$PostRun;->lastValue:Ljava/lang/String;

    iget-object v3, p0, Landroid/preference/InfinitySet$PostRun;->value:Ljava/lang/String;

    iget-boolean v4, p0, Landroid/preference/InfinitySet$PostRun;->state:Z

    iget-object v5, p0, Landroid/preference/InfinitySet$PostRun;->postList:Ljava/util/List;

    iget-boolean v6, p0, Landroid/preference/InfinitySet$PostRun;->notifyBroadcast:Z

    iget-boolean v7, p0, Landroid/preference/InfinitySet$PostRun;->notifyScript:Z

    invoke-static {v1}, Landroid/preference/InfinitySet$Utils;->clearKeyCheckDataCleared(Landroid/preference/Preference;)V

    invoke-virtual {v1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v12, v1, Landroid/preference/InfinityListPreference;

    if-eqz v12, :cond_1

    check-cast v1, Landroid/preference/InfinityListPreference;

    iget v10, v1, Landroid/preference/InfinityListPreference;->mListType:I

    const/16 v11, 0x10

    if-eq v10, v11, :cond_0

    const/16 v11, 0x12

    if-ne v10, v11, :cond_1

    :cond_0
    invoke-static {v0, v3, v7}, Landroid/preference/InfinitySet$Utils;->runScript(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_1
    if-nez v12, :cond_6

    instance-of v12, v1, Landroid/preference/InfinityEditTextPreference;

    if-eqz v12, :cond_6

    if-eqz v3, :cond_6

    const-string v11, "broadcasts:"

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v0, v10, v11, v6}, Landroid/preference/InfinitySet$Utils;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez v8, :cond_9

    :cond_2
    const/4 v10, 0x0

    const-string/jumbo v12, "scripts:"

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v13, ""

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :cond_3
    const/4 v11, 0x0

    if-eqz v2, :cond_4

    const-string/jumbo v13, "scripts:"

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    const-string v14, ""

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :cond_4
    if-nez v11, :cond_5

    if-eqz v9, :cond_6

    :cond_5
    const/4 v12, 0x0

    invoke-static {v0, v10, v11, v12, v7}, Landroid/preference/InfinitySet$Utils;->handleScript(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_6
    const/4 v10, 0x0

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_7

    check-cast v10, Ljava/lang/String;

    invoke-static {v0, v10, v3, v6}, Landroid/preference/InfinitySet$Utils;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez v10, :cond_9

    :cond_7
    if-nez v4, :cond_8

    const/4 v10, 0x1

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_9

    check-cast v10, Ljava/lang/String;

    invoke-static {v0, v10, v3, v6}, Landroid/preference/InfinitySet$Utils;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_8
    if-eqz v4, :cond_9

    const/4 v10, 0x2

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_9

    check-cast v10, Ljava/lang/String;

    invoke-static {v0, v10, v3, v6}, Landroid/preference/InfinitySet$Utils;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_9
    if-nez v9, :cond_d

    instance-of v10, v1, Landroid/preference/InfinityListPreference;

    if-eqz v10, :cond_a

    check-cast v1, Landroid/preference/InfinityListPreference;

    iget v10, v1, Landroid/preference/InfinityListPreference;->mListType:I

    const/16 v11, 0x10

    if-eq v10, v11, :cond_d

    const/16 v11, 0x11

    if-eq v10, v11, :cond_d

    const/16 v11, 0x12

    if-eq v10, v11, :cond_d

    :cond_a
    const/4 v10, 0x3

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_b

    check-cast v10, Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v0, v10, v11, v3, v7}, Landroid/preference/InfinitySet$Utils;->handleScript(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez v10, :cond_d

    :cond_b
    const/4 v10, 0x4

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const/4 v11, 0x5

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    if-nez v4, :cond_c

    invoke-static {v0, v10, v11, v3, v7}, Landroid/preference/InfinitySet$Utils;->handleScript(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_c
    if-eqz v4, :cond_d

    invoke-static {v0, v11, v10, v3, v7}, Landroid/preference/InfinitySet$Utils;->handleScript(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_d
    return-void
.end method
