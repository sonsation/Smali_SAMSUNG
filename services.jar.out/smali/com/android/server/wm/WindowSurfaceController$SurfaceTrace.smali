.class Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;
.super Landroid/view/SurfaceControl;
.source "WindowSurfaceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowSurfaceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SurfaceTrace"
.end annotation


# static fields
.field private static final LOG_SURFACE_TRACE:Z

.field private static final SURFACE_TAG:Ljava/lang/String;

.field static final sSurfaces:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDsdx:F

.field private mDsdy:F

.field private mDtdx:F

.field private mDtdy:F

.field private final mFinalCrop:Landroid/graphics/Rect;

.field private mIsOpaque:Z

.field private mLayer:I

.field private mLayerStack:I

.field private final mName:Ljava/lang/String;

.field private final mPosition:Landroid/graphics/PointF;

.field private mShown:Z

.field private final mSize:Landroid/graphics/Point;

.field private mSurfaceTraceAlpha:F

.field private final mWindowCrop:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 608
    const-string/jumbo v0, "WindowManager"

    sput-object v0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->SURFACE_TAG:Ljava/lang/String;

    .line 609
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SURFACE_TRACE:Z

    sput-boolean v0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->LOG_SURFACE_TRACE:Z

    .line 610
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->sSurfaces:Ljava/util/ArrayList;

    .line 607
    return-void
.end method

.method public constructor <init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V
    .locals 3
    .param p1, "s"    # Landroid/view/SurfaceSession;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "format"    # I
    .param p6, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 627
    invoke-direct/range {p0 .. p6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    .line 612
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mSurfaceTraceAlpha:F

    .line 614
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mPosition:Landroid/graphics/PointF;

    .line 615
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mSize:Landroid/graphics/Point;

    .line 616
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mWindowCrop:Landroid/graphics/Rect;

    .line 617
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mFinalCrop:Landroid/graphics/Rect;

    .line 618
    iput-boolean v1, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mShown:Z

    .line 628
    if-eqz p2, :cond_1

    .end local p2    # "name":Ljava/lang/String;
    :goto_0
    iput-object p2, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mName:Ljava/lang/String;

    .line 629
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mSize:Landroid/graphics/Point;

    invoke-virtual {v0, p3, p4}, Landroid/graphics/Point;->set(II)V

    .line 630
    sget-boolean v0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->LOG_SURFACE_TRACE:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->SURFACE_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ctor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". Called by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 631
    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    .line 630
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    :cond_0
    sget-object v1, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->sSurfaces:Ljava/util/ArrayList;

    monitor-enter v1

    .line 633
    :try_start_0
    sget-object v0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->sSurfaces:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 626
    return-void

    .line 628
    .restart local p2    # "name":Ljava/lang/String;
    :cond_1
    const-string/jumbo p2, "Not named"

    goto :goto_0

    .line 632
    .end local p2    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static dumpAllSurfaces(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 5
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "header"    # Ljava/lang/String;

    .prologue
    .line 809
    sget-object v4, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->sSurfaces:Ljava/util/ArrayList;

    monitor-enter v4

    .line 810
    :try_start_0
    sget-object v3, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->sSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 811
    .local v0, "N":I
    if-gtz v0, :cond_0

    monitor-exit v4

    .line 812
    return-void

    .line 814
    :cond_0
    if-eqz p1, :cond_1

    .line 815
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 817
    :cond_1
    const-string/jumbo v3, "WINDOW MANAGER SURFACES (dumpsys window surfaces)"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 818
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 819
    sget-object v3, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->sSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;

    .line 820
    .local v2, "s":Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;
    const-string/jumbo v3, "  Surface #"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v3, ": #"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 821
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 822
    const-string/jumbo v3, " "

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 823
    const-string/jumbo v3, "    mLayerStack="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mLayerStack:I

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 824
    const-string/jumbo v3, " mLayer="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mLayer:I

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 825
    const-string/jumbo v3, "    mShown="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, v2, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mShown:Z

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v3, " mAlpha="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 826
    iget v3, v2, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mSurfaceTraceAlpha:F

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(F)V

    const-string/jumbo v3, " mIsOpaque="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 827
    iget-boolean v3, v2, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mIsOpaque:Z

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 828
    const-string/jumbo v3, "    mPosition="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mPosition:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(F)V

    const-string/jumbo v3, ","

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 829
    iget-object v3, v2, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mPosition:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(F)V

    .line 830
    const-string/jumbo v3, " mSize="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v3, "x"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 831
    iget-object v3, v2, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 832
    const-string/jumbo v3, "    mCrop="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mWindowCrop:Landroid/graphics/Rect;

    invoke-virtual {v3, p0}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 833
    const-string/jumbo v3, "    mFinalCrop="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mFinalCrop:Landroid/graphics/Rect;

    invoke-virtual {v3, p0}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 834
    const-string/jumbo v3, "    Transform: ("

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mDsdx:F

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(F)V

    const-string/jumbo v3, ", "

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 835
    iget v3, v2, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mDtdx:F

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(F)V

    const-string/jumbo v3, ", "

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mDsdy:F

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(F)V

    .line 836
    const-string/jumbo v3, ", "

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mDtdy:F

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(F)V

    const-string/jumbo v3, ")"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 818
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .end local v2    # "s":Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;
    :cond_2
    monitor-exit v4

    .line 808
    return-void

    .line 809
    .end local v0    # "N":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .prologue
    .line 783
    invoke-super {p0}, Landroid/view/SurfaceControl;->destroy()V

    .line 784
    sget-boolean v0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->LOG_SURFACE_TRACE:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->SURFACE_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "destroy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". Called by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 785
    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    .line 784
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    :cond_0
    sget-object v1, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->sSurfaces:Ljava/util/ArrayList;

    monitor-enter v1

    .line 787
    :try_start_0
    sget-object v0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->sSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 782
    return-void

    .line 786
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public hide()V
    .locals 3

    .prologue
    .line 763
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mShown:Z

    if-eqz v0, :cond_1

    .line 764
    sget-boolean v0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->LOG_SURFACE_TRACE:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->SURFACE_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hide: OLD:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". Called by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 765
    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    .line 764
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mShown:Z

    .line 768
    :cond_1
    invoke-super {p0}, Landroid/view/SurfaceControl;->hide()V

    .line 762
    return-void
.end method

.method public release()V
    .locals 3

    .prologue
    .line 793
    invoke-super {p0}, Landroid/view/SurfaceControl;->release()V

    .line 794
    sget-boolean v0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->LOG_SURFACE_TRACE:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->SURFACE_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "release: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". Called by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 795
    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    .line 794
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    :cond_0
    sget-object v1, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->sSurfaces:Ljava/util/ArrayList;

    monitor-enter v1

    .line 797
    :try_start_0
    sget-object v0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->sSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 792
    return-void

    .line 796
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setAlpha(F)V
    .locals 3
    .param p1, "alpha"    # F

    .prologue
    .line 639
    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mSurfaceTraceAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    .line 640
    sget-boolean v0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->LOG_SURFACE_TRACE:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->SURFACE_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAlpha("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "): OLD:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 641
    const-string/jumbo v2, ". Called by "

    .line 640
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 641
    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    .line 640
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    :cond_0
    iput p1, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mSurfaceTraceAlpha:F

    .line 644
    :cond_1
    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 638
    return-void
.end method

.method public setFinalCrop(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "crop"    # Landroid/graphics/Rect;

    .prologue
    .line 711
    if-eqz p1, :cond_1

    .line 712
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mFinalCrop:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 713
    sget-boolean v0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->LOG_SURFACE_TRACE:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->SURFACE_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFinalCrop("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 714
    invoke-virtual {p1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    .line 713
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 714
    const-string/jumbo v2, "): OLD:"

    .line 713
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 714
    const-string/jumbo v2, ". Called by "

    .line 713
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 715
    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    .line 713
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mFinalCrop:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 719
    :cond_1
    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setFinalCrop(Landroid/graphics/Rect;)V

    .line 710
    return-void
.end method

.method public setLayer(I)V
    .locals 5
    .param p1, "zorder"    # I

    .prologue
    .line 649
    iget v2, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mLayer:I

    if-eq p1, v2, :cond_1

    .line 650
    sget-boolean v2, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->LOG_SURFACE_TRACE:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->SURFACE_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setLayer("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "): OLD:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 651
    const-string/jumbo v4, ". Called by "

    .line 650
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 651
    const/4 v4, 0x3

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    .line 650
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    :cond_0
    iput p1, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mLayer:I

    .line 654
    :cond_1
    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 656
    sget-object v3, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->sSurfaces:Ljava/util/ArrayList;

    monitor-enter v3

    .line 657
    :try_start_0
    sget-object v2, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->sSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 659
    sget-object v2, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->sSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 660
    sget-object v2, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->sSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;

    .line 661
    .local v1, "s":Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;
    iget v2, v1, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mLayer:I

    if-ge v2, p1, :cond_3

    .line 665
    .end local v1    # "s":Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;
    :cond_2
    sget-object v2, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->sSurfaces:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v2, v4, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 648
    return-void

    .line 659
    .restart local v1    # "s":Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 656
    .end local v0    # "i":I
    .end local v1    # "s":Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public setLayerStack(I)V
    .locals 3
    .param p1, "layerStack"    # I

    .prologue
    .line 724
    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mLayerStack:I

    if-eq p1, v0, :cond_1

    .line 725
    sget-boolean v0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->LOG_SURFACE_TRACE:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->SURFACE_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLayerStack("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "): OLD:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 726
    const-string/jumbo v2, ". Called by "

    .line 725
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 726
    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    .line 725
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    :cond_0
    iput p1, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mLayerStack:I

    .line 729
    :cond_1
    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 723
    return-void
.end method

.method public setMatrix(FFFF)V
    .locals 3
    .param p1, "dsdx"    # F
    .param p2, "dtdx"    # F
    .param p3, "dsdy"    # F
    .param p4, "dtdy"    # F

    .prologue
    .line 749
    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mDsdx:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mDtdx:F

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_3

    .line 750
    :cond_0
    :goto_0
    sget-boolean v0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->LOG_SURFACE_TRACE:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->SURFACE_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMatrix("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 751
    const-string/jumbo v2, ","

    .line 750
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 751
    const-string/jumbo v2, "): OLD:"

    .line 750
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 751
    const-string/jumbo v2, ". Called by "

    .line 750
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 752
    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    .line 750
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    :cond_1
    iput p1, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mDsdx:F

    .line 754
    iput p2, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mDtdx:F

    .line 755
    iput p3, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mDsdy:F

    .line 756
    iput p4, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mDtdy:F

    .line 758
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    .line 748
    return-void

    .line 749
    :cond_3
    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mDsdy:F

    cmpl-float v0, p3, v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mDtdy:F

    cmpl-float v0, p4, v0

    if-eqz v0, :cond_2

    goto :goto_0
.end method

.method public setOpaque(Z)V
    .locals 3
    .param p1, "isOpaque"    # Z

    .prologue
    .line 734
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mIsOpaque:Z

    if-eq p1, v0, :cond_1

    .line 735
    sget-boolean v0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->LOG_SURFACE_TRACE:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->SURFACE_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setOpaque("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "): OLD:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 736
    const-string/jumbo v2, ". Called by "

    .line 735
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 736
    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    .line 735
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mIsOpaque:Z

    .line 739
    :cond_1
    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setOpaque(Z)V

    .line 733
    return-void
.end method

.method public setPosition(FF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 671
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mPosition:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mPosition:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_2

    .line 672
    :cond_0
    sget-boolean v0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->LOG_SURFACE_TRACE:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->SURFACE_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPosition("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "): OLD:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 673
    const-string/jumbo v2, ". Called by "

    .line 672
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 673
    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    .line 672
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mPosition:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 676
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 670
    return-void
.end method

.method public setPositionAppliesWithResize()V
    .locals 3

    .prologue
    .line 681
    sget-boolean v0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->LOG_SURFACE_TRACE:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->SURFACE_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPositionAppliesWithResize(): OLD: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 682
    const-string/jumbo v2, ". Called by"

    .line 681
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 682
    const/16 v2, 0x9

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    .line 681
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    :cond_0
    invoke-super {p0}, Landroid/view/SurfaceControl;->setPositionAppliesWithResize()V

    .line 680
    return-void
.end method

.method public setSecure(Z)V
    .locals 0
    .param p1, "isSecure"    # Z

    .prologue
    .line 744
    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setSecure(Z)V

    .line 743
    return-void
.end method

.method public setSize(II)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 688
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-eq p2, v0, :cond_2

    .line 689
    :cond_0
    sget-boolean v0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->LOG_SURFACE_TRACE:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->SURFACE_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSize("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "): OLD:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 690
    const-string/jumbo v2, ". Called by "

    .line 689
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 690
    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    .line 689
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mSize:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 693
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceControl;->setSize(II)V

    .line 687
    return-void
.end method

.method public setTransparentRegionHint(Landroid/graphics/Region;)V
    .locals 3
    .param p1, "region"    # Landroid/graphics/Region;

    .prologue
    .line 803
    sget-boolean v0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->LOG_SURFACE_TRACE:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->SURFACE_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTransparentRegionHint("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 804
    const-string/jumbo v2, "): OLD: "

    .line 803
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 804
    const-string/jumbo v2, " . Called by "

    .line 803
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 804
    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    .line 803
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    :cond_0
    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setTransparentRegionHint(Landroid/graphics/Region;)V

    .line 802
    return-void
.end method

.method public setWindowCrop(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "crop"    # Landroid/graphics/Rect;

    .prologue
    .line 698
    if-eqz p1, :cond_1

    .line 699
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mWindowCrop:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 700
    sget-boolean v0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->LOG_SURFACE_TRACE:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->SURFACE_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setWindowCrop("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 701
    invoke-virtual {p1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    .line 700
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 701
    const-string/jumbo v2, "): OLD:"

    .line 700
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 701
    const-string/jumbo v2, ". Called by "

    .line 700
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 702
    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    .line 700
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mWindowCrop:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 706
    :cond_1
    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setWindowCrop(Landroid/graphics/Rect;)V

    .line 697
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 773
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mShown:Z

    if-nez v0, :cond_1

    .line 774
    sget-boolean v0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->LOG_SURFACE_TRACE:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->SURFACE_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "show: OLD:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". Called by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 775
    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    .line 774
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mShown:Z

    .line 778
    :cond_1
    invoke-super {p0}, Landroid/view/SurfaceControl;->show()V

    .line 772
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 843
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Surface "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 844
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mName:Ljava/lang/String;

    .line 843
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 844
    const-string/jumbo v1, " ("

    .line 843
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 844
    iget v1, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mLayerStack:I

    .line 843
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 844
    const-string/jumbo v1, "): shown="

    .line 843
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 844
    iget-boolean v1, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mShown:Z

    .line 843
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 844
    const-string/jumbo v1, " layer="

    .line 843
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 844
    iget v1, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mLayer:I

    .line 843
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 845
    const-string/jumbo v1, " alpha="

    .line 843
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 845
    iget v1, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mSurfaceTraceAlpha:F

    .line 843
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 845
    const-string/jumbo v1, " "

    .line 843
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 845
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mPosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    .line 843
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 845
    const-string/jumbo v1, ","

    .line 843
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 845
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mPosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 843
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 846
    const-string/jumbo v1, " "

    .line 843
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 846
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    .line 843
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 846
    const-string/jumbo v1, "x"

    .line 843
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 846
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 843
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 847
    const-string/jumbo v1, " crop="

    .line 843
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 847
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mWindowCrop:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v1

    .line 843
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 848
    const-string/jumbo v1, " opaque="

    .line 843
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 848
    iget-boolean v1, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mIsOpaque:Z

    .line 843
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 849
    const-string/jumbo v1, " ("

    .line 843
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 849
    iget v1, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mDsdx:F

    .line 843
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 849
    const-string/jumbo v1, ","

    .line 843
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 849
    iget v1, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mDtdx:F

    .line 843
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 849
    const-string/jumbo v1, ","

    .line 843
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 849
    iget v1, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mDsdy:F

    .line 843
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 849
    const-string/jumbo v1, ","

    .line 843
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 849
    iget v1, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;->mDtdy:F

    .line 843
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 849
    const-string/jumbo v1, ")"

    .line 843
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
