.class Lcom/samsung/android/app/music/milk/share/ui/ShareFragment$1;
.super Ljava/lang/Object;
.source "ShareFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->getMostRecentlyUsedApps()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/samsung/android/app/music/common/model/share/SnsInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment$1;->this$0:Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/samsung/android/app/music/common/model/share/SnsInfo;Lcom/samsung/android/app/music/common/model/share/SnsInfo;)I
    .locals 4
    .param p1, "lhs"    # Lcom/samsung/android/app/music/common/model/share/SnsInfo;
    .param p2, "rhs"    # Lcom/samsung/android/app/music/common/model/share/SnsInfo;

    .prologue
    .line 259
    iget-wide v0, p1, Lcom/samsung/android/app/music/common/model/share/SnsInfo;->mRecentTime:J

    iget-wide v2, p2, Lcom/samsung/android/app/music/common/model/share/SnsInfo;->mRecentTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 260
    const/4 v0, -0x1

    .line 264
    :goto_0
    return v0

    .line 261
    :cond_0
    iget-wide v0, p1, Lcom/samsung/android/app/music/common/model/share/SnsInfo;->mRecentTime:J

    iget-wide v2, p2, Lcom/samsung/android/app/music/common/model/share/SnsInfo;->mRecentTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 262
    const/4 v0, 0x1

    goto :goto_0

    .line 264
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 255
    check-cast p1, Lcom/samsung/android/app/music/common/model/share/SnsInfo;

    check-cast p2, Lcom/samsung/android/app/music/common/model/share/SnsInfo;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment$1;->compare(Lcom/samsung/android/app/music/common/model/share/SnsInfo;Lcom/samsung/android/app/music/common/model/share/SnsInfo;)I

    move-result v0

    return v0
.end method
