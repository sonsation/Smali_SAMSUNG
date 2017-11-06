.class Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper$ToDestroy;
.super Ljava/lang/Object;
.source "LoopPagerAdapterWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ToDestroy"
.end annotation


# instance fields
.field container:Landroid/view/ViewGroup;

.field object:Ljava/lang/Object;

.field position:I


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper$ToDestroy;->container:Landroid/view/ViewGroup;

    .line 148
    iput p2, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper$ToDestroy;->position:I

    .line 149
    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper$ToDestroy;->object:Ljava/lang/Object;

    .line 150
    return-void
.end method
