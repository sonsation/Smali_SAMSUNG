.class Lcom/android/server/policy/TspStateManager$TspDebug;
.super Ljava/lang/Object;
.source "TspStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/TspStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TspDebug"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TspStateManagerInternal.DebugSetting"


# instance fields
.field private mHoleCommand:Ljava/lang/String;

.field private mLandCommand:Ljava/lang/String;

.field private mLastCommand:Ljava/lang/String;

.field private mPortCommand:Ljava/lang/String;

.field private mScreenInitHeight:I

.field private mScreenInitWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 561
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 562
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/TspStateManager$TspDebug;->setInitDisplaySize(II)V

    .line 561
    return-void
.end method

.method private updateDebugString(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v2, 0x2f

    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 582
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/android/server/policy/TspStateManager$TspDebug;->mScreenInitWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 583
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 584
    iget v1, p0, Lcom/android/server/policy/TspStateManager$TspDebug;->mScreenInitHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 585
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 586
    iget-object v1, p0, Lcom/android/server/policy/TspStateManager$TspDebug;->mPortCommand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 588
    iget-object v1, p0, Lcom/android/server/policy/TspStateManager$TspDebug;->mLandCommand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 590
    iget-object v1, p0, Lcom/android/server/policy/TspStateManager$TspDebug;->mHoleCommand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 592
    iget-object v1, p0, Lcom/android/server/policy/TspStateManager$TspDebug;->mLastCommand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "setting_last_grip_cmd"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 580
    return-void
.end method


# virtual methods
.method public setInitDisplaySize(II)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 597
    iput p1, p0, Lcom/android/server/policy/TspStateManager$TspDebug;->mScreenInitWidth:I

    .line 598
    iput p2, p0, Lcom/android/server/policy/TspStateManager$TspDebug;->mScreenInitHeight:I

    .line 596
    return-void
.end method

.method public updateTspState(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cmd"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    .line 565
    iput-object p2, p0, Lcom/android/server/policy/TspStateManager$TspDebug;->mLastCommand:Ljava/lang/String;

    .line 566
    packed-switch p3, :pswitch_data_0

    .line 577
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/policy/TspStateManager$TspDebug;->updateDebugString(Landroid/content/Context;)V

    .line 564
    return-void

    .line 568
    :pswitch_0
    iput-object p2, p0, Lcom/android/server/policy/TspStateManager$TspDebug;->mPortCommand:Ljava/lang/String;

    goto :goto_0

    .line 571
    :pswitch_1
    iput-object p2, p0, Lcom/android/server/policy/TspStateManager$TspDebug;->mLandCommand:Ljava/lang/String;

    goto :goto_0

    .line 574
    :pswitch_2
    iput-object p2, p0, Lcom/android/server/policy/TspStateManager$TspDebug;->mHoleCommand:Ljava/lang/String;

    goto :goto_0

    .line 566
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
