.class Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu$1;
.super Ljava/lang/Object;
.source "EffectLevelSliderMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu$1;->this$0:Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu$1;->this$0:Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu$1;->this$0:Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu$1;->this$0:Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->hideMenu()V

    :cond_0
    return-void
.end method
