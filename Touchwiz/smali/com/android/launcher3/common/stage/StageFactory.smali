.class public final Lcom/android/launcher3/common/stage/StageFactory;
.super Ljava/lang/Object;
.source "StageFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildStage(I)Lcom/android/launcher3/common/stage/Stage;
    .locals 2
    .param p0, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 14
    packed-switch p0, :pswitch_data_0

    .line 35
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 16
    :pswitch_0
    new-instance v0, Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/controller/AppsController;-><init>()V

    .line 38
    .local v0, "s":Lcom/android/launcher3/common/stage/Stage;
    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/launcher3/common/stage/Stage;->setMode(I)V

    .line 39
    return-object v0

    .line 19
    .end local v0    # "s":Lcom/android/launcher3/common/stage/Stage;
    :pswitch_1
    new-instance v0, Lcom/android/launcher3/home/HomeController;

    invoke-direct {v0}, Lcom/android/launcher3/home/HomeController;-><init>()V

    .line 20
    .restart local v0    # "s":Lcom/android/launcher3/common/stage/Stage;
    goto :goto_0

    .line 22
    .end local v0    # "s":Lcom/android/launcher3/common/stage/Stage;
    :pswitch_2
    new-instance v0, Lcom/android/launcher3/widget/controller/WidgetController;

    invoke-direct {v0}, Lcom/android/launcher3/widget/controller/WidgetController;-><init>()V

    .line 23
    .restart local v0    # "s":Lcom/android/launcher3/common/stage/Stage;
    goto :goto_0

    .line 25
    .end local v0    # "s":Lcom/android/launcher3/common/stage/Stage;
    :pswitch_3
    new-instance v0, Lcom/android/launcher3/widget/folder/WidgetFolderController;

    invoke-direct {v0}, Lcom/android/launcher3/widget/folder/WidgetFolderController;-><init>()V

    .line 26
    .restart local v0    # "s":Lcom/android/launcher3/common/stage/Stage;
    goto :goto_0

    .line 28
    .end local v0    # "s":Lcom/android/launcher3/common/stage/Stage;
    :pswitch_4
    new-instance v0, Lcom/android/launcher3/folder/controller/FolderController;

    invoke-direct {v0}, Lcom/android/launcher3/folder/controller/FolderController;-><init>()V

    .line 29
    .restart local v0    # "s":Lcom/android/launcher3/common/stage/Stage;
    goto :goto_0

    .line 31
    .end local v0    # "s":Lcom/android/launcher3/common/stage/Stage;
    :pswitch_5
    new-instance v0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    invoke-direct {v0}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;-><init>()V

    .line 32
    .restart local v0    # "s":Lcom/android/launcher3/common/stage/Stage;
    goto :goto_0

    .line 14
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
