.class Landroid/os/DVFSHelper$ModelMSM8939;
.super Landroid/os/DVFSHelper$ModelMSM8916;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DVFSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelMSM8939"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/DVFSHelper;


# direct methods
.method constructor <init>(Landroid/os/DVFSHelper;)V
    .locals 2
    .param p1, "this$0"    # Landroid/os/DVFSHelper;

    .prologue
    const v1, 0x87f00

    .line 2737
    iput-object p1, p0, Landroid/os/DVFSHelper$ModelMSM8939;->this$0:Landroid/os/DVFSHelper;

    invoke-direct {p0, p1}, Landroid/os/DVFSHelper$ModelMSM8916;-><init>(Landroid/os/DVFSHelper;)V

    .line 2738
    const v0, 0x61a80

    iput v0, p0, Landroid/os/DVFSHelper$Model;->LIST_SCROLL_ARM_FREQ:I

    .line 2739
    const v0, 0x135600

    iput v0, p0, Landroid/os/DVFSHelper$Model;->AMS_RESUME_ARM_FREQ:I

    .line 2740
    const/16 v0, 0x31c

    iput v0, p0, Landroid/os/DVFSHelper$Model;->AMS_RESUME_BUS_FREQ:I

    .line 2741
    const/16 v0, 0x258

    sput v0, Landroid/os/DVFSHelper;->AMS_RESUME_TAIL_BOOST_TIMEOUT:I

    .line 2742
    const v0, 0x79e00

    iput v0, p0, Landroid/os/DVFSHelper$Model;->DEVICE_WAKEUP_ARM_FREQ:I

    .line 2743
    iput v1, p0, Landroid/os/DVFSHelper$Model;->GALLERY_TOUCH_ARM_FREQ:I

    .line 2744
    iput v1, p0, Landroid/os/DVFSHelper$Model;->LAUNCHER_TOUCH_ARM_FREQ:I

    .line 2745
    const/16 v0, 0x5dc

    sput v0, Landroid/os/DVFSHelper;->PWM_ROTATION_BOOST_TIMEOUT:I

    .line 2737
    return-void
.end method
