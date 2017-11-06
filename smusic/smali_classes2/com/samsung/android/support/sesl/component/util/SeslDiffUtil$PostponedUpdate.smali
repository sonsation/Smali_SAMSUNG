.class Lcom/samsung/android/support/sesl/component/util/SeslDiffUtil$PostponedUpdate;
.super Ljava/lang/Object;
.source "SeslDiffUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/util/SeslDiffUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PostponedUpdate"
.end annotation


# instance fields
.field currentPos:I

.field posInOwnerList:I

.field removal:Z


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0
    .param p1, "posInOwnerList"    # I
    .param p2, "currentPos"    # I
    .param p3, "removal"    # Z

    .prologue
    .line 850
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 851
    iput p1, p0, Lcom/samsung/android/support/sesl/component/util/SeslDiffUtil$PostponedUpdate;->posInOwnerList:I

    .line 852
    iput p2, p0, Lcom/samsung/android/support/sesl/component/util/SeslDiffUtil$PostponedUpdate;->currentPos:I

    .line 853
    iput-boolean p3, p0, Lcom/samsung/android/support/sesl/component/util/SeslDiffUtil$PostponedUpdate;->removal:Z

    .line 854
    return-void
.end method
