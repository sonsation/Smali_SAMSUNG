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
    .line 1377
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
    .line 1481
    iget-boolean v0, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mLockVirgin:Z

    if-eqz v0, :cond_0

    .line 1482
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mUserId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    .line 1485
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SaveChosenLockWorkerBase;->finish(Landroid/content/Intent;)V

    .line 1480
    return-void
.end method

.method protected saveAndVerifyInBackground()Landroid/content/Intent;
    .locals 12

    .prologue
    .line 1401
    const/4 v2, 0x0

    .line 1402
    .local v2, "result":Landroid/content/Intent;
    invoke-static {}, Lcom/android/settings/ChooseLockPattern;->-get11()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {}, Lcom/android/settings/ChooseLockPattern;->-get4()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    const/16 v8, 0x64

    if-lt v7, v8, :cond_a

    :cond_0
    const/4 v6, 0x0

    .line 1403
    .local v6, "userId":I
    :goto_0
    const/4 v1, 0x0

    .line 1405
    .local v1, "pm":Lcom/samsung/android/knox/SemPersonaManager;
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->getActivity()Landroid/app/Activity;

    move-result-object v7

    if-eqz v7, :cond_b

    .line 1406
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string/jumbo v8, "persona"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "pm":Lcom/samsung/android/knox/SemPersonaManager;
    check-cast v1, Lcom/samsung/android/knox/SemPersonaManager;

    .line 1412
    :goto_1
    const-string/jumbo v7, "Settings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Inside Pattern mIsSharedDevice: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->-get5()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    invoke-static {}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->-get5()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1414
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/android/settings/Utils;->removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    .line 1418
    :cond_1
    iget-object v7, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v8, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mChosenPattern:Ljava/util/List;

    iget-object v9, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mCurrentPattern:Ljava/lang/String;

    invoke-virtual {v7, v8, v9, v6}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;Ljava/lang/String;I)V

    .line 1420
    iget-boolean v7, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mHasChallenge:Z

    if-eqz v7, :cond_8

    .line 1421
    const/4 v3, 0x0

    .line 1422
    .local v3, "token":[B
    const/4 v5, 0x0

    .line 1423
    .local v5, "tokenIris":[B
    const/4 v4, 0x0

    .line 1426
    .local v4, "tokenFace":[B
    :try_start_0
    iget-wide v8, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mChallenge:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-eqz v7, :cond_2

    .line 1427
    iget-object v7, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v8, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mChosenPattern:Ljava/util/List;

    iget-wide v10, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mChallenge:J

    invoke-virtual {v7, v8, v10, v11, v6}, Lcom/android/internal/widget/LockPatternUtils;->verifyPattern(Ljava/util/List;JI)[B

    move-result-object v3

    .line 1430
    .end local v3    # "token":[B
    :cond_2
    iget-wide v8, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mChallengeIris:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-eqz v7, :cond_3

    .line 1431
    iget-object v7, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v8, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mChosenPattern:Ljava/util/List;

    iget-wide v10, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mChallengeIris:J

    invoke-virtual {v7, v8, v10, v11, v6}, Lcom/android/internal/widget/LockPatternUtils;->verifyPattern(Ljava/util/List;JI)[B

    move-result-object v5

    .line 1434
    .end local v5    # "tokenIris":[B
    :cond_3
    iget-wide v8, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mChallengeFace:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-eqz v7, :cond_4

    .line 1435
    iget-object v7, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v8, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mChosenPattern:Ljava/util/List;

    iget-wide v10, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mChallengeFace:J

    invoke-virtual {v7, v8, v10, v11, v6}, Lcom/android/internal/widget/LockPatternUtils;->verifyPattern(Ljava/util/List;JI)[B
    :try_end_0
    .catch Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1443
    .end local v4    # "tokenFace":[B
    :cond_4
    :goto_2
    if-eqz v3, :cond_5

    if-nez v5, :cond_6

    .line 1444
    :cond_5
    const-string/jumbo v7, "ChooseLockPattern"

    const-string/jumbo v8, "critical: no token returned for known good pattern"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    :cond_6
    if-nez v4, :cond_7

    .line 1447
    const-string/jumbo v7, "ChooseLockPattern"

    const-string/jumbo v8, "critical: no tokenFace returned for known good pattern"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    :cond_7
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "result":Landroid/content/Intent;
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1451
    .local v2, "result":Landroid/content/Intent;
    const-string/jumbo v7, "hw_auth_token"

    invoke-virtual {v2, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1452
    const-string/jumbo v7, "hw_auth_token_iris"

    invoke-virtual {v2, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1453
    const-string/jumbo v7, "hw_auth_token_face"

    invoke-virtual {v2, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1456
    .end local v2    # "result":Landroid/content/Intent;
    :cond_8
    invoke-static {}, Lcom/android/settings/ChooseLockPattern;->-get12()I

    move-result v7

    const/16 v8, 0x64

    if-lt v7, v8, :cond_9

    invoke-static {}, Lcom/android/settings/ChooseLockPattern;->-get11()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 1475
    :cond_9
    :goto_3
    return-object v2

    .line 1402
    .end local v6    # "userId":I
    .local v2, "result":Landroid/content/Intent;
    :cond_a
    iget v6, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mUserId:I

    .restart local v6    # "userId":I
    goto/16 :goto_0

    .line 1408
    .restart local v1    # "pm":Lcom/samsung/android/knox/SemPersonaManager;
    :cond_b
    const-string/jumbo v7, "ChooseLockPattern"

    const-string/jumbo v8, "getActivity() got null value. It is for setIsFingerAsSupplement"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1437
    .end local v1    # "pm":Lcom/samsung/android/knox/SemPersonaManager;
    .restart local v4    # "tokenFace":[B
    :catch_0
    move-exception v0

    .line 1438
    .local v0, "e":Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
    const/4 v3, 0x0

    .line 1439
    .restart local v3    # "token":[B
    const/4 v5, 0x0

    .line 1440
    .restart local v5    # "tokenIris":[B
    const/4 v4, 0x0

    goto :goto_2

    .line 1456
    .end local v0    # "e":Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
    .end local v2    # "result":Landroid/content/Intent;
    .end local v3    # "token":[B
    .end local v4    # "tokenFace":[B
    .end local v5    # "tokenIris":[B
    :cond_c
    invoke-static {}, Lcom/android/settings/ChooseLockPattern;->-get4()Z

    move-result v7

    if-nez v7, :cond_9

    .line 1457
    iget-object v7, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {v7, v9, v8}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v7

    if-nez v7, :cond_e

    .line 1459
    if-eqz v1, :cond_d

    .line 1460
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Lcom/samsung/android/knox/SemPersonaManager;->setIsFingerAsSupplement(IZ)V

    .line 1467
    :cond_d
    :goto_4
    invoke-static {}, Lcom/android/settings/ChooseLockPattern;->-get3()Z

    move-result v7

    if-nez v7, :cond_9

    .line 1468
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->getActivity()Landroid/app/Activity;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 1469
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/app/Activity;->setResult(I)V

    .line 1470
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->getActivity()Landroid/app/Activity;

    move-result-object v7

    check-cast v7, Lcom/android/settings/ChooseLockPattern;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/android/settings/ChooseLockPattern;->-wrap1(Lcom/android/settings/ChooseLockPattern;I)V

    goto :goto_3

    .line 1463
    :cond_e
    if-eqz v1, :cond_d

    .line 1464
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {v1, v7, v8}, Lcom/samsung/android/knox/SemPersonaManager;->setIsFingerAsSupplement(IZ)V

    goto :goto_4
.end method

.method public start(Lcom/android/internal/widget/LockPatternUtils;ZZJJJLjava/util/List;Ljava/lang/String;I)V
    .locals 10
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "credentialRequired"    # Z
    .param p3, "hasChallenge"    # Z
    .param p4, "challenge"    # J
    .param p6, "challengeIris"    # J
    .param p8, "challengeFace"    # J
    .param p11, "currentPattern"    # Ljava/lang/String;
    .param p12, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "ZZJJJ",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .local p10, "chosenPattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-wide v6, p4

    move/from16 v8, p12

    .line 1385
    invoke-virtual/range {v2 .. v8}, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->prepare(Lcom/android/internal/widget/LockPatternUtils;ZZJI)V

    .line 1387
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mCurrentPattern:Ljava/lang/String;

    .line 1388
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mChosenPattern:Ljava/util/List;

    .line 1389
    move/from16 v0, p12

    iput v0, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mUserId:I

    .line 1391
    move-wide/from16 v0, p6

    iput-wide v0, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mChallengeIris:J

    .line 1392
    move-wide/from16 v0, p8

    iput-wide v0, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mChallengeFace:J

    .line 1394
    iget-object v2, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isPatternEverChosen(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->mLockVirgin:Z

    .line 1396
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->start()V

    .line 1384
    return-void

    .line 1394
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method
