.class Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;
.super Lcom/android/settings/SaveChosenLockWorkerBase;
.source "ChooseLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ChooseLockPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SaveAndFinishWorker"
.end annotation


# instance fields
.field private mChosenPattern:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentPattern:Ljava/lang/String;

.field private mLockVirgin:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1156
    invoke-direct {p0}, Lcom/android/settings/SaveChosenLockWorkerBase;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;-><init>()V

    return-void
.end method


# virtual methods
.method protected finish(Landroid/content/Intent;)V
    .locals 3
    .param p1, "resultData"    # Landroid/content/Intent;

    .prologue
    .line 1245
    iget-boolean v0, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mLockVirgin:Z

    if-eqz v0, :cond_0

    .line 1246
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mUserId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    .line 1249
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SaveChosenLockWorkerBase;->finish(Landroid/content/Intent;)V

    .line 1244
    return-void
.end method

.method protected saveAndVerifyInBackground()Landroid/content/Intent;
    .locals 15

    .prologue
    const/16 v14, 0x64

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v10, 0x1

    .line 1177
    const/4 v2, 0x0

    .line 1178
    .local v2, "result":Landroid/content/Intent;
    invoke-static {}, Lcom/android/settings/ChooseLockPattern;->-get9()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {}, Lcom/android/settings/ChooseLockPattern;->-get4()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    if-lt v6, v14, :cond_7

    :cond_0
    const/4 v5, 0x0

    .line 1179
    .local v5, "userId":I
    :goto_0
    const/4 v1, 0x0

    .line 1181
    .local v1, "pm":Lcom/samsung/android/knox/SemPersonaManager;
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->getActivity()Landroid/app/Activity;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 1182
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string/jumbo v7, "persona"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "pm":Lcom/samsung/android/knox/SemPersonaManager;
    check-cast v1, Lcom/samsung/android/knox/SemPersonaManager;

    .line 1188
    :goto_1
    const-string/jumbo v6, "Settings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Inside Pattern mIsSharedDevice: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->-get3()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    invoke-static {}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->-get3()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1190
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {v6, v7, v10}, Lcom/android/settings/Utils;->removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    .line 1194
    :cond_1
    iget-object v6, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v7, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mChosenPattern:Ljava/util/List;

    iget-object v8, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mCurrentPattern:Ljava/lang/String;

    invoke-virtual {v6, v7, v8, v5}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;Ljava/lang/String;I)V

    .line 1196
    iget-boolean v6, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mHasChallenge:Z

    if-eqz v6, :cond_5

    .line 1197
    const/4 v3, 0x0

    .line 1198
    .local v3, "token":[B
    const/4 v4, 0x0

    .line 1201
    .local v4, "token_2nd":[B
    :try_start_0
    iget-wide v6, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mChallenge:J

    cmp-long v6, v6, v12

    if-eqz v6, :cond_2

    .line 1202
    iget-object v6, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v7, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mChosenPattern:Ljava/util/List;

    iget-wide v8, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mChallenge:J

    invoke-virtual {v6, v7, v8, v9, v5}, Lcom/android/internal/widget/LockPatternUtils;->verifyPattern(Ljava/util/List;JI)[B

    move-result-object v3

    .line 1204
    .end local v3    # "token":[B
    :cond_2
    iget-wide v6, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mChallenge_2nd:J

    cmp-long v6, v6, v12

    if-eqz v6, :cond_3

    .line 1205
    iget-object v6, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v7, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mChosenPattern:Ljava/util/List;

    iget-wide v8, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mChallenge_2nd:J

    invoke-virtual {v6, v7, v8, v9, v5}, Lcom/android/internal/widget/LockPatternUtils;->verifyPattern(Ljava/util/List;JI)[B
    :try_end_0
    .catch Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1211
    .end local v4    # "token_2nd":[B
    :cond_3
    :goto_2
    if-nez v3, :cond_4

    .line 1212
    const-string/jumbo v6, "ChooseLockPattern"

    const-string/jumbo v7, "critical: no token returned for known good pattern"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    :cond_4
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "result":Landroid/content/Intent;
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1216
    .local v2, "result":Landroid/content/Intent;
    const-string/jumbo v6, "hw_auth_token"

    invoke-virtual {v2, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1217
    iget-wide v6, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mChallenge_2nd:J

    cmp-long v6, v6, v12

    if-eqz v6, :cond_5

    .line 1218
    const-string/jumbo v6, "hw_auth_token_2nd"

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1222
    .end local v2    # "result":Landroid/content/Intent;
    :cond_5
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    if-lt v6, v14, :cond_6

    invoke-static {}, Lcom/android/settings/ChooseLockPattern;->-get9()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1240
    :cond_6
    :goto_3
    return-object v2

    .line 1178
    .end local v5    # "userId":I
    .local v2, "result":Landroid/content/Intent;
    :cond_7
    iget v5, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mUserId:I

    .restart local v5    # "userId":I
    goto/16 :goto_0

    .line 1184
    .restart local v1    # "pm":Lcom/samsung/android/knox/SemPersonaManager;
    :cond_8
    const-string/jumbo v6, "ChooseLockPattern"

    const-string/jumbo v7, "getActivity() got null value. It is for setIsFingerAsSupplement"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1207
    .end local v1    # "pm":Lcom/samsung/android/knox/SemPersonaManager;
    .restart local v4    # "token_2nd":[B
    :catch_0
    move-exception v0

    .line 1208
    .local v0, "e":Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
    const/4 v3, 0x0

    .restart local v3    # "token":[B
    goto :goto_2

    .line 1222
    .end local v0    # "e":Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
    .end local v2    # "result":Landroid/content/Intent;
    .end local v3    # "token":[B
    .end local v4    # "token_2nd":[B
    :cond_9
    invoke-static {}, Lcom/android/settings/ChooseLockPattern;->-get4()Z

    move-result v6

    if-nez v6, :cond_6

    .line 1223
    iget-object v6, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-virtual {v6, v10, v7}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v6

    if-nez v6, :cond_b

    .line 1225
    if-eqz v1, :cond_a

    .line 1226
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-virtual {v1, v6, v11}, Lcom/samsung/android/knox/SemPersonaManager;->setIsFingerAsSupplement(IZ)V

    .line 1234
    :cond_a
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->getActivity()Landroid/app/Activity;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 1235
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/app/Activity;->setResult(I)V

    .line 1236
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->getActivity()Landroid/app/Activity;

    move-result-object v6

    check-cast v6, Lcom/android/settings/ChooseLockPattern;

    invoke-static {v6, v10}, Lcom/android/settings/ChooseLockPattern;->-wrap1(Lcom/android/settings/ChooseLockPattern;I)V

    goto :goto_3

    .line 1229
    :cond_b
    if-eqz v1, :cond_a

    .line 1230
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-virtual {v1, v6, v10}, Lcom/samsung/android/knox/SemPersonaManager;->setIsFingerAsSupplement(IZ)V

    goto :goto_4
.end method

.method public start(Lcom/android/internal/widget/LockPatternUtils;ZZJJLjava/util/List;Ljava/lang/String;I)V
    .locals 12
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "credentialRequired"    # Z
    .param p3, "hasChallenge"    # Z
    .param p4, "challenge"    # J
    .param p6, "challenge_2nd"    # J
    .param p9, "currentPattern"    # Ljava/lang/String;
    .param p10, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "ZZJJ",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .local p8, "chosenPattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move/from16 v10, p10

    .line 1164
    invoke-virtual/range {v2 .. v10}, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->prepare(Lcom/android/internal/widget/LockPatternUtils;ZZJJI)V

    .line 1166
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mCurrentPattern:Ljava/lang/String;

    .line 1167
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mChosenPattern:Ljava/util/List;

    .line 1168
    move/from16 v0, p10

    iput v0, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mUserId:I

    .line 1170
    iget-object v2, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isPatternEverChosen(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mLockVirgin:Z

    .line 1172
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->start()V

    .line 1163
    return-void

    .line 1170
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method
