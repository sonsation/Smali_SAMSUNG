.class public abstract Lcom/sec/android/app/camera/menu/AbstractMenu;
.super Ljava/lang/Object;
.source "AbstractMenu.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/MenuBase;


# static fields
.field private static final ANIMATION_DURATION_150:I = 0x96

.field protected static final TAG:Ljava/lang/String; = "AbstractMenu"


# instance fields
.field private mActive:Z

.field protected mAnchor:Lcom/samsung/android/glview/GLImage;

.field private mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field protected mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field protected mChild:Lcom/sec/android/app/camera/menu/AbstractMenu;

.field private mEffect:Z

.field protected mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private mGLParentView:Lcom/samsung/android/glview/GLViewGroup;

.field protected mHideAnimation:Landroid/view/animation/Animation;

.field private mHideListener:Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;

.field private mMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

.field protected mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

.field protected mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

.field private mOneTimeHideAnimation:Landroid/view/animation/Animation;

.field private mOneTimeHideAnimationRequested:Z

.field private mOneTimeShowAnimation:Landroid/view/animation/Animation;

.field private mOneTimeShowAnimationRequested:Z

.field private mPreviewTouchEnabled:Z

.field private mShowAnimation:Landroid/view/animation/Animation;

.field private mShowListener:Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;

.field private mViewId:I

.field protected mVisibility:Z

.field protected mZorder:I


# direct methods
.method protected constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;FFFFLcom/sec/android/app/camera/menu/MenuResourceDepot;IZ)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mChild:Lcom/sec/android/app/camera/menu/AbstractMenu;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mZorder:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mPreviewTouchEnabled:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mEffect:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mActive:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mOneTimeShowAnimationRequested:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mOneTimeHideAnimationRequested:Z

    new-instance v1, Lcom/sec/android/app/camera/menu/AbstractMenu$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/menu/AbstractMenu$1;-><init>(Lcom/sec/android/app/camera/menu/AbstractMenu;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    iput-object p5, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mGLParentView:Lcom/samsung/android/glview/GLViewGroup;

    new-instance v1, Lcom/samsung/android/glview/GLViewGroup;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    move v3, p6

    move v4, p7

    move v5, p8

    move/from16 v6, p9

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, p4}, Lcom/samsung/android/glview/GLViewGroup;->setTag(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mGLParentView:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iput-object p2, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iput-object p3, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    move/from16 v0, p11

    iput v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mZorder:I

    iput p4, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mViewId:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mVisibility:Z

    move/from16 v0, p12

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mEffect:Z

    iget-boolean v1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mEffect:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x96

    new-instance v2, Lcom/sec/android/app/camera/util/interpolator/SineEaseInOut;

    invoke-direct {v2}, Lcom/sec/android/app/camera/util/interpolator/SineEaseInOut;-><init>()V

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mShowAnimation:Landroid/view/animation/Animation;

    const/16 v1, 0x96

    new-instance v2, Lcom/sec/android/app/camera/util/interpolator/SineEaseInOut;

    invoke-direct {v2}, Lcom/sec/android/app/camera/util/interpolator/SineEaseInOut;-><init>()V

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mHideAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mShowAnimation:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mHideAnimation:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_0
    return-void
.end method

.method protected constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;FFLcom/sec/android/app/camera/menu/MenuResourceDepot;IZ)V
    .locals 4

    const/4 v0, 0x0

    const/16 v3, 0x96

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mChild:Lcom/sec/android/app/camera/menu/AbstractMenu;

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mZorder:I

    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mPreviewTouchEnabled:Z

    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mEffect:Z

    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mActive:Z

    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mOneTimeShowAnimationRequested:Z

    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mOneTimeHideAnimationRequested:Z

    new-instance v0, Lcom/sec/android/app/camera/menu/AbstractMenu$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/menu/AbstractMenu$1;-><init>(Lcom/sec/android/app/camera/menu/AbstractMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    iput-object p5, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mGLParentView:Lcom/samsung/android/glview/GLViewGroup;

    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-direct {v0, v1, p6, p7}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, p4}, Lcom/samsung/android/glview/GLViewGroup;->setTag(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mGLParentView:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iput-object p2, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iput-object p3, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    iput-object p8, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    iput p9, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mZorder:I

    iput p4, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mViewId:I

    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mVisibility:Z

    iput-boolean p10, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mEffect:Z

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mEffect:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/android/app/camera/util/interpolator/SineEaseInOut;

    invoke-direct {v0}, Lcom/sec/android/app/camera/util/interpolator/SineEaseInOut;-><init>()V

    invoke-static {v3, v0}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mShowAnimation:Landroid/view/animation/Animation;

    new-instance v0, Lcom/sec/android/app/camera/util/interpolator/SineEaseInOut;

    invoke-direct {v0}, Lcom/sec/android/app/camera/util/interpolator/SineEaseInOut;-><init>()V

    invoke-static {v3, v0}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mHideAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mShowAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mHideAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_0
    return-void
.end method

.method protected constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/menu/MenuResourceDepot;IZ)V
    .locals 4

    const/4 v0, 0x0

    const/16 v3, 0x96

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mChild:Lcom/sec/android/app/camera/menu/AbstractMenu;

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mZorder:I

    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mPreviewTouchEnabled:Z

    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mEffect:Z

    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mActive:Z

    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mOneTimeShowAnimationRequested:Z

    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mOneTimeHideAnimationRequested:Z

    new-instance v0, Lcom/sec/android/app/camera/menu/AbstractMenu$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/menu/AbstractMenu$1;-><init>(Lcom/sec/android/app/camera/menu/AbstractMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    iput-object p5, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mGLParentView:Lcom/samsung/android/glview/GLViewGroup;

    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, p4}, Lcom/samsung/android/glview/GLViewGroup;->setTag(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mGLParentView:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iput-object p2, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iput-object p3, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    iput-object p6, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    iput p7, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mZorder:I

    iput p4, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mViewId:I

    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mVisibility:Z

    iput-boolean p8, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mEffect:Z

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mEffect:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/android/app/camera/util/interpolator/SineEaseInOut;

    invoke-direct {v0}, Lcom/sec/android/app/camera/util/interpolator/SineEaseInOut;-><init>()V

    invoke-static {v3, v0}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mShowAnimation:Landroid/view/animation/Animation;

    new-instance v0, Lcom/sec/android/app/camera/util/interpolator/SineEaseInOut;

    invoke-direct {v0}, Lcom/sec/android/app/camera/util/interpolator/SineEaseInOut;-><init>()V

    invoke-static {v3, v0}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mHideAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mShowAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mHideAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/menu/AbstractMenu;)Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mShowAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/menu/AbstractMenu;)Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mOneTimeShowAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/menu/AbstractMenu;)Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mOneTimeHideAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method


# virtual methods
.method protected addView(Lcom/samsung/android/glview/GLView;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    return-void
.end method

.method protected clear()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mGLParentView:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mGLParentView:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    iput-object v2, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mGLParentView:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mGLParentView:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    :cond_2
    iput-object v2, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    :cond_3
    iput-object v2, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mGLParentView:Lcom/samsung/android/glview/GLViewGroup;

    iput-object v2, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iput-object v2, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mChild:Lcom/sec/android/app/camera/menu/AbstractMenu;

    iput-object v2, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    return-void
.end method

.method protected final getBaseViewId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mViewId:I

    return v0
.end method

.method protected getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    return-object v0
.end method

.method protected getParentViewGroup()Lcom/samsung/android/glview/GLViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mGLParentView:Lcom/samsung/android/glview/GLViewGroup;

    return-object v0
.end method

.method protected final getVisibility()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mVisibility:Z

    return v0
.end method

.method protected final getZorder()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mZorder:I

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method protected hideMenu()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mActive:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mVisibility:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mOneTimeHideAnimationRequested:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mOneTimeHideAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mOneTimeHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/glview/GLViewGroup;->setAnimation(Landroid/view/animation/Animation;Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->startAnimation()V

    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mOneTimeHideAnimationRequested:Z

    :cond_2
    :goto_1
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mVisibility:Z

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mChild:Lcom/sec/android/app/camera/menu/AbstractMenu;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mChild:Lcom/sec/android/app/camera/menu/AbstractMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/AbstractMenu;->hideMenu()V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/AbstractMenu;->onHide()V

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->popMenu()V

    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mActive:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mHideListener:Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mHideListener:Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;->onHide(Lcom/sec/android/app/camera/interfaces/MenuBase;)V

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->onHideMenu(Lcom/sec/android/app/camera/menu/AbstractMenu;)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mHideAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/glview/GLViewGroup;->setAnimation(Landroid/view/animation/Animation;Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->startAnimation()V

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    goto :goto_1
.end method

.method public isActive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mActive:Z

    return v0
.end method

.method protected isAnimationFinished()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->isAnimationFinished()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected final isFullScreen()Z
    .locals 2

    iget v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mZorder:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final isPreviewTouchEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mPreviewTouchEnabled:Z

    return v0
.end method

.method protected onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/AbstractMenu;->hideMenu()V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract onHide()V
.end method

.method protected abstract onHideAnimationEnd(Landroid/view/animation/Animation;)V
.end method

.method protected abstract onHideAnimationStart(Landroid/view/animation/Animation;)V
.end method

.method protected onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method protected abstract onShow()V
.end method

.method protected abstract onShowAnimationEnd(Landroid/view/animation/Animation;)V
.end method

.method protected abstract onShowAnimationStart(Landroid/view/animation/Animation;)V
.end method

.method protected onStop()V
    .locals 0

    return-void
.end method

.method protected removeView(Lcom/samsung/android/glview/GLView;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    return-void
.end method

.method protected restoreMenu()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mVisibility:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mChild:Lcom/sec/android/app/camera/menu/AbstractMenu;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mChild:Lcom/sec/android/app/camera/menu/AbstractMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/AbstractMenu;->showMenu()V

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/AbstractMenu;->onShow()V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mShowListener:Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mShowListener:Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;->onShow(Lcom/sec/android/app/camera/interfaces/MenuBase;)V

    :cond_3
    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mOneTimeShowAnimationRequested:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mOneTimeShowAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mOneTimeShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->startAnimation()V

    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mOneTimeShowAnimationRequested:Z

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iput-boolean v3, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mVisibility:Z

    iput-boolean v3, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mActive:Z

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mShowAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->startAnimation()V

    goto :goto_1
.end method

.method protected final setAnchor(Lcom/samsung/android/glview/GLImage;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mGLParentView:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    return-void
.end method

.method protected final setChild(Lcom/sec/android/app/camera/menu/AbstractMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mChild:Lcom/sec/android/app/camera/menu/AbstractMenu;

    return-void
.end method

.method public setHideAnimation(Landroid/view/animation/Animation;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mHideAnimation:Landroid/view/animation/Animation;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mHideAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_0
    return-void
.end method

.method public setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mHideListener:Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;

    return-void
.end method

.method public setOnShowListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mShowListener:Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;

    return-void
.end method

.method public setOneTimeHideAnimation(Landroid/view/animation/Animation;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mOneTimeHideAnimation:Landroid/view/animation/Animation;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mOneTimeHideAnimationRequested:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mOneTimeHideAnimationRequested:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mOneTimeHideAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method

.method public setOneTimeShowAnimation(Landroid/view/animation/Animation;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mOneTimeShowAnimation:Landroid/view/animation/Animation;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mOneTimeShowAnimationRequested:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mOneTimeShowAnimationRequested:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mOneTimeShowAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method

.method protected setPreviewTouchEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mPreviewTouchEnabled:Z

    return-void
.end method

.method public setShowAnimation(Landroid/view/animation/Animation;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mShowAnimation:Landroid/view/animation/Animation;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mShowAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_0
    return-void
.end method

.method protected final setZorder(I)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mZorder:I

    and-int/lit16 v0, v0, 0xf0

    or-int/2addr v0, p1

    iput v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mZorder:I

    return-void
.end method

.method protected showMenu()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->pushMenu(Lcom/sec/android/app/camera/menu/AbstractMenu;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->bringToFront()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->bringToFront()V

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/AbstractMenu;->restoreMenu()V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->onShowMenu(Lcom/sec/android/app/camera/menu/AbstractMenu;)V

    goto :goto_0
.end method

.method protected showMenu(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->pushMenu(Lcom/sec/android/app/camera/menu/AbstractMenu;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->bringToFront()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->bringToFront()V

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/AbstractMenu;->restoreMenu()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->onShowMenu(Lcom/sec/android/app/camera/menu/AbstractMenu;)V

    goto :goto_0
.end method
