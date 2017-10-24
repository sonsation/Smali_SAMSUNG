.class Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;
.super Landroid/view/SurfaceControl;
.source "WindowSurfaceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowSurfaceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SurfaceControlWithBackground"
.end annotation


# instance fields
.field private mAppForcedInvisible:Z

.field private mAppToken:Lcom/android/server/wm/AppWindowToken;

.field private mBackgroundControl:Landroid/view/SurfaceControl;

.field public mLayer:I

.field private mOpaque:Z

.field public mVisible:Z

.field final synthetic this$0:Lcom/android/server/wm/WindowSurfaceController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowSurfaceController;Landroid/view/SurfaceSession;Ljava/lang/String;IIIILcom/android/server/wm/AppWindowToken;)V
    .locals 9
    .param p1, "this$0"    # Lcom/android/server/wm/WindowSurfaceController;
    .param p2, "s"    # Landroid/view/SurfaceSession;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "format"    # I
    .param p7, "flags"    # I
    .param p8, "token"    # Lcom/android/server/wm/AppWindowToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    .prologue
    .line 861
    iput-object p1, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->this$0:Lcom/android/server/wm/WindowSurfaceController;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    .line 865
    invoke-direct/range {v1 .. v7}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    .line 855
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mOpaque:Z

    .line 856
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mAppForcedInvisible:Z

    .line 858
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mVisible:Z

    .line 859
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mLayer:I

    .line 866
    new-instance v1, Landroid/view/SurfaceControl;

    .line 867
    const/high16 v2, 0x20000

    or-int v7, p7, v2

    const/4 v6, -0x1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 866
    invoke-direct/range {v1 .. v7}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    iput-object v1, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    .line 868
    move/from16 v0, p7

    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mOpaque:Z

    .line 869
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 871
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/AppWindowToken;->addSurfaceViewBackground(Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;)V

    .line 874
    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v1, :cond_0

    .line 875
    move-object/from16 v0, p8

    iget-object v1, v0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    if-eqz v1, :cond_0

    .line 876
    move-object/from16 v0, p8

    iget-object v1, v0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->inFreeformWorkspace()Z

    move-result v1

    .line 874
    if-eqz v1, :cond_0

    .line 877
    move-object/from16 v0, p8

    iget-object v1, v0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    iget-object v1, v1, Lcom/android/server/wm/Task;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-nez v1, :cond_0

    .line 878
    move-object/from16 v0, p8

    iget-object v8, v0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    new-instance v1, Landroid/view/SurfaceControl;

    iget-object v2, p1, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    const-string/jumbo v3, "freeform background"

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 879
    const/4 v6, -0x1

    const v7, 0x20004

    .line 878
    invoke-direct/range {v1 .. v7}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    iput-object v1, v8, Lcom/android/server/wm/Task;->mBackgroundControl:Landroid/view/SurfaceControl;

    .line 880
    move-object/from16 v0, p8

    iget-object v1, v0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    move-object/from16 v0, p8

    iput-object v0, v1, Lcom/android/server/wm/Task;->mBackgroundToken:Lcom/android/server/wm/AppWindowToken;

    .line 864
    :cond_0
    return-void

    .line 868
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public deferTransactionUntil(Landroid/os/IBinder;J)V
    .locals 2
    .param p1, "handle"    # Landroid/os/IBinder;
    .param p2, "frame"    # J

    .prologue
    .line 988
    invoke-super {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->deferTransactionUntil(Landroid/os/IBinder;J)V

    .line 989
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/SurfaceControl;->deferTransactionUntil(Landroid/os/IBinder;J)V

    .line 987
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 969
    invoke-super {p0}, Landroid/view/SurfaceControl;->destroy()V

    .line 970
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 971
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/AppWindowToken;->removeSurfaceViewBackground(Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;)V

    .line 968
    return-void
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 951
    invoke-super {p0}, Landroid/view/SurfaceControl;->hide()V

    .line 952
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mVisible:Z

    if-eqz v0, :cond_0

    .line 953
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mVisible:Z

    .line 954
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->updateSurfaceViewBackgroundVisibilities()V

    .line 950
    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 976
    invoke-super {p0}, Landroid/view/SurfaceControl;->release()V

    .line 977
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    .line 975
    return-void
.end method

.method public setAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 887
    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 888
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 886
    return-void
.end method

.method public setFinalCrop(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "crop"    # Landroid/graphics/Rect;

    .prologue
    .line 921
    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setFinalCrop(Landroid/graphics/Rect;)V

    .line 922
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setFinalCrop(Landroid/graphics/Rect;)V

    .line 920
    return-void
.end method

.method public setLayer(I)V
    .locals 2
    .param p1, "zorder"    # I

    .prologue
    .line 893
    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 894
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    add-int/lit8 v1, p1, -0x2

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 895
    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mLayer:I

    if-eq v0, p1, :cond_0

    .line 896
    iput p1, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mLayer:I

    .line 897
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->updateSurfaceViewBackgroundVisibilities()V

    .line 892
    :cond_0
    return-void
.end method

.method public setLayerStack(I)V
    .locals 1
    .param p1, "layerStack"    # I

    .prologue
    .line 927
    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 928
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 926
    return-void
.end method

.method public setMatrix(FFFF)V
    .locals 1
    .param p1, "dsdx"    # F
    .param p2, "dtdx"    # F
    .param p3, "dsdy"    # F
    .param p4, "dtdy"    # F

    .prologue
    .line 945
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    .line 946
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    .line 944
    return-void
.end method

.method public setOpaque(Z)V
    .locals 1
    .param p1, "isOpaque"    # Z

    .prologue
    .line 933
    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setOpaque(Z)V

    .line 934
    iput-boolean p1, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mOpaque:Z

    .line 935
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mAppForcedInvisible:Z

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->updateBackgroundVisibility(Z)V

    .line 932
    return-void
.end method

.method public setPosition(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 903
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 904
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 902
    return-void
.end method

.method public setSecure(Z)V
    .locals 0
    .param p1, "isSecure"    # Z

    .prologue
    .line 940
    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setSecure(Z)V

    .line 939
    return-void
.end method

.method public setSize(II)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 909
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceControl;->setSize(II)V

    .line 910
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl;->setSize(II)V

    .line 908
    return-void
.end method

.method public setTransparentRegionHint(Landroid/graphics/Region;)V
    .locals 1
    .param p1, "region"    # Landroid/graphics/Region;

    .prologue
    .line 982
    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setTransparentRegionHint(Landroid/graphics/Region;)V

    .line 983
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setTransparentRegionHint(Landroid/graphics/Region;)V

    .line 981
    return-void
.end method

.method public setWindowCrop(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "crop"    # Landroid/graphics/Rect;

    .prologue
    .line 915
    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setWindowCrop(Landroid/graphics/Rect;)V

    .line 916
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setWindowCrop(Landroid/graphics/Rect;)V

    .line 914
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 960
    invoke-super {p0}, Landroid/view/SurfaceControl;->show()V

    .line 961
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mVisible:Z

    if-nez v0, :cond_0

    .line 962
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mVisible:Z

    .line 963
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->updateSurfaceViewBackgroundVisibilities()V

    .line 959
    :cond_0
    return-void
.end method

.method updateBackgroundVisibility(Z)V
    .locals 1
    .param p1, "forcedInvisible"    # Z

    .prologue
    .line 993
    iput-boolean p1, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mAppForcedInvisible:Z

    .line 994
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mOpaque:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mVisible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mAppForcedInvisible:Z

    if-eqz v0, :cond_1

    .line 997
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->hide()V

    .line 992
    :goto_0
    return-void

    .line 995
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V

    goto :goto_0
.end method
