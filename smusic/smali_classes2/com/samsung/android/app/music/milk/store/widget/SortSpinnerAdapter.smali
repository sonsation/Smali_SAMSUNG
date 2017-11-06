.class public Lcom/samsung/android/app/music/milk/store/widget/SortSpinnerAdapter;
.super Lcom/samsung/android/app/music/milk/store/widget/BaseSpinnerAdapter;
.source "SortSpinnerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/store/widget/BaseSpinnerAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SortSpinnerAdapter"


# instance fields
.field private enableMap:[Z


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "items"    # [Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/BaseSpinnerAdapter;-><init>(Landroid/content/Context;[Ljava/lang/Object;)V

    .line 14
    array-length v0, p2

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/SortSpinnerAdapter;->enableMap:[Z

    .line 15
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/SortSpinnerAdapter;->enableMap:[Z

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 16
    return-void
.end method


# virtual methods
.method public getItemString(I)Ljava/lang/String;
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/SortSpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    const-string v0, "SortSpinnerAdapter"

    return-object v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 30
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/SortSpinnerAdapter;->enableMap:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method public setIsEnabled(IZ)V
    .locals 1
    .param p1, "pos"    # I
    .param p2, "isEnable"    # Z

    .prologue
    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/SortSpinnerAdapter;->enableMap:[Z

    aput-boolean p2, v0, p1

    .line 35
    return-void
.end method
