.class public abstract Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;
.super Landroid/os/Binder;
.source "IMultiWindowManager.java"

# interfaces
.implements Lcom/samsung/android/multiwindow/IMultiWindowManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/multiwindow/IMultiWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.multiwindow.IMultiWindowManager"

.field static final TRANSACTION_activityPaused:I = 0x1

.field static final TRANSACTION_changeFreeformMode:I = 0x13

.field static final TRANSACTION_completeToggleSplitScreen:I = 0x25

.field static final TRANSACTION_enterFreeformTask:I = 0x2a

.field static final TRANSACTION_exitMultiWindow:I = 0x2

.field static final TRANSACTION_getFreeformTasks:I = 0x1e

.field static final TRANSACTION_getImeTargetFreeformTaskId:I = 0x26

.field static final TRANSACTION_getMultiWindowModeStates:I = 0x27

.field static final TRANSACTION_getTopRunningTaskInfo:I = 0x2d

.field static final TRANSACTION_isExpandedDockedStack:I = 0x19

.field static final TRANSACTION_isForceResizable:I = 0x2b

.field static final TRANSACTION_isLaunchableForMultiInstance:I = 0x2c

.field static final TRANSACTION_isSnapViewRunning:I = 0x22

.field static final TRANSACTION_makeGhostFreeform:I = 0x3

.field static final TRANSACTION_maximizeStackByDivider:I = 0x15

.field static final TRANSACTION_maximizeTopTask:I = 0x30

.field static final TRANSACTION_minimizeAllFreeform:I = 0x4

.field static final TRANSACTION_minimizeOhterFreeforms:I = 0x5

.field static final TRANSACTION_minimizeTask:I = 0x6

.field static final TRANSACTION_minimizeTopTask:I = 0x2f

.field static final TRANSACTION_moveActivityTaskToBack:I = 0x8

.field static final TRANSACTION_moveMultiWindowTasksToFullScreen:I = 0x1d

.field static final TRANSACTION_registerMultiWindowDividerPanelListener:I = 0xa

.field static final TRANSACTION_registerMultiWindowEventListener:I = 0x18

.field static final TRANSACTION_registerMultiWindowFocusedFrameListener:I = 0x9

.field static final TRANSACTION_registerMultiWindowServiceCallback:I = 0xc

.field static final TRANSACTION_removeFreeformTasks:I = 0x1f

.field static final TRANSACTION_removeTaskIfNeeded:I = 0x14

.field static final TRANSACTION_reportMinimizeContainerBounds:I = 0x20

.field static final TRANSACTION_rotateFreeformTask:I = 0x7

.field static final TRANSACTION_setAutoResizingEnabled:I = 0x1b

.field static final TRANSACTION_setDividerButtonsDimLayer:I = 0x16

.field static final TRANSACTION_setDockedStackDividerButtonsTouchRegion:I = 0x1a

.field static final TRANSACTION_setLaunchBounds:I = 0x10

.field static final TRANSACTION_setMultiWindowEnabledForUser:I = 0x1c

.field static final TRANSACTION_setSlideMode:I = 0xe

.field static final TRANSACTION_setSnapView:I = 0x21

.field static final TRANSACTION_showRecentApps:I = 0x24

.field static final TRANSACTION_slideFreeform:I = 0x11

.field static final TRANSACTION_slideOrUnslideAllFreeform:I = 0x12

.field static final TRANSACTION_startDividerDragging:I = 0x28

.field static final TRANSACTION_startFreeform:I = 0x2e

.field static final TRANSACTION_startResizingFreeformTask:I = 0x17

.field static final TRANSACTION_stopDividerDragging:I = 0x29

.field static final TRANSACTION_swapSnapTasks:I = 0x23

.field static final TRANSACTION_unregisterMultiWindowDividerPanelListener:I = 0xb

.field static final TRANSACTION_unregisterMultiWindowServiceCallback:I = 0xd

.field static final TRANSACTION_updateTaskPositionInTaskBar:I = 0xf


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "com.samsung.android.multiwindow.IMultiWindowManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/IMultiWindowManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 24
    if-nez p0, :cond_0

    .line 25
    return-object v1

    .line 27
    :cond_0
    const-string/jumbo v1, "com.samsung.android.multiwindow.IMultiWindowManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/multiwindow/IMultiWindowManager;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/samsung/android/multiwindow/IMultiWindowManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 29
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 533
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v28

    return v28

    .line 43
    :sswitch_0
    const-string/jumbo v28, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    const/16 v28, 0x1

    return v28

    .line 48
    :sswitch_1
    const-string/jumbo v28, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 52
    .local v7, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    if-eqz v28, :cond_0

    .line 53
    sget-object v28, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/os/Bundle;

    .line 58
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v7, v1}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->activityPaused(Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 59
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    const/16 v28, 0x1

    return v28

    .line 56
    :cond_0
    const/16 v18, 0x0

    .local v18, "_arg1":Landroid/os/Bundle;
    goto :goto_0

    .line 64
    .end local v7    # "_arg0":Landroid/os/IBinder;
    .end local v18    # "_arg1":Landroid/os/Bundle;
    :sswitch_2
    const-string/jumbo v28, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 67
    .restart local v7    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->exitMultiWindow(Landroid/os/IBinder;)Z

    move-result v26

    .line 68
    .local v26, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    if-eqz v26, :cond_1

    const/16 v28, 0x1

    :goto_1
    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    const/16 v28, 0x1

    return v28

    .line 69
    :cond_1
    const/16 v28, 0x0

    goto :goto_1

    .line 74
    .end local v7    # "_arg0":Landroid/os/IBinder;
    .end local v26    # "_result":Z
    :sswitch_3
    const-string/jumbo v28, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 78
    .restart local v7    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 79
    .local v16, "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v7, v1}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->makeGhostFreeform(Landroid/os/IBinder;I)V

    .line 80
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    const/16 v28, 0x1

    return v28

    .line 85
    .end local v7    # "_arg0":Landroid/os/IBinder;
    .end local v16    # "_arg1":I
    :sswitch_4
    const-string/jumbo v28, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 88
    .local v4, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->minimizeAllFreeform(I)V

    .line 89
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    const/16 v28, 0x1

    return v28

    .line 94
    .end local v4    # "_arg0":I
    :sswitch_5
    const-string/jumbo v28, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 97
    .restart local v7    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->minimizeOhterFreeforms(Landroid/os/IBinder;)V

    .line 98
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    const/16 v28, 0x1

    return v28

    .line 103
    .end local v7    # "_arg0":Landroid/os/IBinder;
    :sswitch_6
    const-string/jumbo v28, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 106
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->minimizeTask(I)V

    .line 107
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    const/16 v28, 0x1

    return v28

    .line 112
    .end local v4    # "_arg0":I
    :sswitch_7
    const-string/jumbo v28, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 115
    .restart local v7    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->rotateFreeformTask(Landroid/os/IBinder;)V

    .line 116
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    const/16 v28, 0x1

    return v28

    .line 121
    .end local v7    # "_arg0":Landroid/os/IBinder;
    :sswitch_8
    const-string/jumbo v28, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 125
    .restart local v7    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    if-eqz v28, :cond_2

    const/16 v20, 0x1

    .line 127
    .local v20, "_arg1":Z
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    if-eqz v28, :cond_3

    const/16 v22, 0x1

    .line 128
    .local v22, "_arg2":Z
    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v22

    invoke-virtual {v0, v7, v1, v2}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->moveActivityTaskToBack(Landroid/os/IBinder;ZZ)Z

    move-result v26

    .line 129
    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    if-eqz v26, :cond_4

    const/16 v28, 0x1

    :goto_4
    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    const/16 v28, 0x1

    return v28

    .line 125
    .end local v20    # "_arg1":Z
    .end local v22    # "_arg2":Z
    .end local v26    # "_result":Z
    :cond_2
    const/16 v20, 0x0

    .restart local v20    # "_arg1":Z
    goto :goto_2

    .line 127
    :cond_3
    const/16 v22, 0x0

    goto :goto_3

    .line 130
    .restart local v22    # "_arg2":Z
    .restart local v26    # "_result":Z
    :cond_4
    const/16 v28, 0x0

    goto :goto_4

    .line 135
    .end local v7    # "_arg0":Landroid/os/IBinder;
    .end local v20    # "_arg1":Z
    .end local v22    # "_arg2":Z
    .end local v26    # "_result":Z
    :sswitch_9
    const-string/jumbo v28, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/samsung/android/multiwindow/IMultiWindowFocusedFrameListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/IMultiWindowFocusedFrameListener;

    move-result-object v11

    .line 138
    .local v11, "_arg0":Lcom/samsung/android/multiwindow/IMultiWindowFocusedFrameListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->registerMultiWindowFocusedFrameListener(Lcom/samsung/android/multiwindow/IMultiWindowFocusedFrameListener;)V

    .line 139
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    const/16 v28, 0x1

    return v28

    .line 144
    .end local v11    # "_arg0":Lcom/samsung/android/multiwindow/IMultiWindowFocusedFrameListener;
    :sswitch_a
    const-string/jumbo v28, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/samsung/android/multiwindow/IMultiWindowDividerPanelListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/IMultiWindowDividerPanelListener;

    move-result-object v9

    .line 147
    .local v9, "_arg0":Lcom/samsung/android/multiwindow/IMultiWindowDividerPanelListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->registerMultiWindowDividerPanelListener(Lcom/samsung/android/multiwindow/IMultiWindowDividerPanelListener;)V

    .line 148
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    const/16 v28, 0x1

    return v28

    .line 153
    .end local v9    # "_arg0":Lcom/samsung/android/multiwindow/IMultiWindowDividerPanelListener;
    :sswitch_b
    const-string/jumbo v28, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/samsung/android/multiwindow/IMultiWindowDividerPanelListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/IMultiWindowDividerPanelListener;

    move-result-object v9

    .line 156
    .restart local v9    # "_arg0":Lcom/samsung/android/multiwindow/IMultiWindowDividerPanelListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->unregisterMultiWindowDividerPanelListener(Lcom/samsung/android/multiwindow/IMultiWindowDividerPanelListener;)V

    .line 157
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    const/16 v28, 0x1

    return v28

    .line 162
    .end local v9    # "_arg0":Lcom/samsung/android/multiwindow/IMultiWindowDividerPanelListener;
    :sswitch_c
    const-string/jumbo v28, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/samsung/android/multiwindow/IMultiWindowCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/IMultiWindowCallback;

    move-result-object v8

    .line 165
    .local v8, "_arg0":Lcom/samsung/android/multiwindow/IMultiWindowCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->registerMultiWindowServiceCallback(Lcom/samsung/android/multiwindow/IMultiWindowCallback;)V

    .line 166
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    const/16 v28, 0x1

    return v28

    .line 171
    .end local v8    # "_arg0":Lcom/samsung/android/multiwindow/IMultiWindowCallback;
    :sswitch_d
    const-string/jumbo v28, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/samsung/android/multiwindow/IMultiWindowCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/IMultiWindowCallback;

    move-result-object v8

    .line 174
    .restart local v8    # "_arg0":Lcom/samsung/android/multiwindow/IMultiWindowCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->unregisterMultiWindowServiceCallback(Lcom/samsung/android/multiwindow/IMultiWindowCallback;)V

    .line 175
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    const/16 v28, 0x1

    return v28

    .line 180
    .end local v8    # "_arg0":Lcom/samsung/android/multiwindow/IMultiWindowCallback;
    :sswitch_e
    const-string/jumbo v28, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 184
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    if-eqz v28, :cond_5

    const/16 v20, 0x1

    .line 185
    .local v20, "_arg1":Z
    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->setSlideMode(IZ)V

    .line 186
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    const/16 v28, 0x1

    return v28

    .line 184
    .end local v20    # "_arg1":Z
    :cond_5
    const/16 v20, 0x0

    goto :goto_5

    .line 191
    .end local v4    # "_arg0":I
    :sswitch_f
    const-string/jumbo v28, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v27

    .line 194
    .local v27, "cl":Ljava/lang/ClassLoader;
    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v13

    .line 195
    .local v13, "_arg0":Ljava/util/Map;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->updateTaskPositionInTaskBar(Ljava/util/Map;)V

    .line 196
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    const/16 v28, 0x1

    return v28

    .line 201
    .end local v13    # "_arg0":Ljava/util/Map;
    .end local v27    # "cl":Ljava/lang/ClassLoader;
    :sswitch_10
    const-string/jumbo v28, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 205
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    if-eqz v28, :cond_6

    .line 206
    sget-object v28, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/graphics/Rect;

    .line 211
    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->setLaunchBounds(ILandroid/graphics/Rect;)V

    .line 212
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    const/16 v28, 0x1

    return v28

    .line 209
    :cond_6
    const/16 v17, 0x0

    .local v17, "_arg1":Landroid/graphics/Rect;
    goto :goto_6

    .line 217
    .end local v4    # "_arg0":I
    .end local v17    # "_arg1":Landroid/graphics/Rect;
    :sswitch_11
    const-string/jumbo v28, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 220
    .restart local v7    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->slideFreeform(Landroid/os/IBinder;)V

    .line 221
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    const/16 v28, 0x1

    return v28

    .line 226
    .end local v7    # "_arg0":Landroid/os/IBinder;
    :sswitch_12
    const-string/jumbo v28, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    if-eqz v28, :cond_7

    const/4 v14, 0x1

    .line 229
    .local v14, "_arg0":Z
    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->slideOrUnslideAllFreeform(Z)V

    .line 230
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    const/16 v28, 0x1

    return v28

    .line 228
    .end local v14    # "_arg0":Z
    :cond_7
    const/4 v14, 0x0

    goto :goto_7

    .line 235
    :sswitch_13
    const-string/jumbo v28, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->changeFreeformMode()V

    .line 237
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    const/16 v28, 0x1

    return v28

    .line 242
    :sswitch_14
    const-string/jumbo v28, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 244
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    if-eqz v28, :cond_8

    const/4 v14, 0x1

    .line 245
    .restart local v14    # "_arg0":Z
    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->removeTaskIfNeeded(Z)Z

    move-result v26

    .line 246
    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    if-eqz v26, :cond_9

    const/16 v28, 0x1

    :goto_9
    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 248
    const/16 v28, 0x1

    return v28

    .line 244
    .end local v14    # "_arg0":Z
    .end local v26    # "_result":Z
    :cond_8
    const/4 v14, 0x0

    goto :goto_8

    .line 247
    .restart local v14    # "_arg0":Z
    .restart local v26    # "_result":Z
    :cond_9
    const/16 v28, 0x0

    goto :goto_9

    .line 252
    .end local v14    # "_arg0":Z
    .end local v26    # "_result":Z
    :sswitch_15
    const-string/jumbo v28, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 254
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    if-eqz v28, :cond_a

    const/4 v14, 0x1

    .line 255
    .restart local v14    # "_arg0":Z
    :goto_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->maximizeStackByDivider(Z)V

    .line 256
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    const/16 v28, 0x1

    return v28

    .line 254
    .end local v14    # "_arg0":Z
    :cond_a
    const/4 v14, 0x0

    goto :goto_a

    .line 261
    :sswitch_16
    const-string/jumbo v28, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 263
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    if-eqz v28, :cond_b

    const/4 v14, 0x1

    .line 265
    .local v14, "_arg0":Z
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v15

    .line 267
    .local v15, "_arg1":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 268
    .local v21, "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v14, v15, v1}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->setDividerButtonsDimLayer(ZFI)V

    .line 269
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 270
    const/16 v28, 0x1

    return v28

    .line 263
    .end local v14    # "_arg0":Z
    .end local v15    # "_arg1":F
    .end local v21    # "_arg2":I
    :cond_b
    const/4 v14, 0x0

    .restart local v14    # "_arg0":Z
    goto :goto_b

    .line 274
    .end local v14    # "_arg0":Z
    :sswitch_17
    const-string/jumbo v28, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 276
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 278
    .restart local v7    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 280
    .restart local v16    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 281
    .restart local v21    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v21

    invoke-virtual {v0, v7, v1, v2}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->startResizingFreeformTask(Landroid/os/IBinder;II)V

    .line 282
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    const/16 v28, 0x1

    return v28

    .line 287
    .end local v7    # "_arg0":Landroid/os/IBinder;
    .end local v16    # "_arg1":I
    .end local v21    # "_arg2":I
    :sswitch_18
    const-string/jumbo v28, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 289
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/samsung/android/multiwindow/IMultiWindowEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/IMultiWindowEventListener;

    move-result-object v10

    .line 290
    .local v10, "_arg0":Lcom/samsung/android/multiwindow/IMultiWindowEventListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->registerMultiWindowEventListener(Lcom/samsung/android/multiwindow/IMultiWindowEventListener;)V

    .line 291
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    const/16 v28, 0x1

    return v28

    .line 296
    .end local v10    # "_arg0":Lcom/samsung/android/multiwindow/IMultiWindowEventListener;
    :sswitch_19
    const-string/jumbo v28, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->isExpandedDockedStack()Z

    move-result v26

    .line 298
    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    if-eqz v26, :cond_c

    const/16 v28, 0x1

    :goto_c
    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    const/16 v28, 0x1

    return v28

    .line 299
    :cond_c
    const/16 v28, 0x0

    goto :goto_c

    .line 304
    .end local v26    # "_result":Z
    :sswitch_1a
    const-string/jumbo v28, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    if-eqz v28, :cond_d

    .line 307
    sget-object v28, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    .line 312
    :goto_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->setDockedStackDividerButtonsTouchRegion(Landroid/graphics/Rect;)V

    .line 313
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    const/16 v28, 0x1

    return v28

    .line 310
    :cond_d
    const/4 v6, 0x0

    .local v6, "_arg0":Landroid/graphics/Rect;
    goto :goto_d

    .line 318
    .end local v6    # "_arg0":Landroid/graphics/Rect;
    :sswitch_1b
    const-string/jumbo v28, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    if-eqz v28, :cond_e

    const/4 v14, 0x1

    .line 321
    .local v14, "_arg0":Z
    :goto_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->setAutoResizingEnabled(Z)V

    .line 322
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    const/16 v28, 0x1

    return v28

    .line 320
    .end local v14    # "_arg0":Z
    :cond_e
    const/4 v14, 0x0

    goto :goto_e

    .line 327
    :sswitch_1c
    const-string/jumbo v28, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 329
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 331
    .local v12, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 333
    .local v19, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    if-eqz v28, :cond_f

    const/16 v22, 0x1

    .line 335
    .local v22, "_arg2":Z
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 336
    .local v23, "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v12, v1, v2, v3}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->setMultiWindowEnabledForUser(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 337
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 338
    const/16 v28, 0x1

    return v28

    .line 333
    .end local v22    # "_arg2":Z
    .end local v23    # "_arg3":I
    :cond_f
    const/16 v22, 0x0

    .restart local v22    # "_arg2":Z
    goto :goto_f

    .line 342
    .end local v12    # "_arg0":Ljava/lang/String;
    .end local v19    # "_arg1":Ljava/lang/String;
    .end local v22    # "_arg2":Z
    :sswitch_1d
    const-string/jumbo v28, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 343
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->moveMultiWindowTasksToFullScreen()V

    .line 344
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    const/16 v28, 0x1

    return v28

    .line 349
    :sswitch_1e
    const-string/jumbo v28, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 352
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->getFreeformTasks(I)Ljava/util/List;

    move-result-object v25

    .line 353
    .local v25, "_result":Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 355
    const/16 v28, 0x1

    return v28

    .line 359
    .end local v4    # "_arg0":I
    .end local v25    # "_result":Ljava/util/List;
    :sswitch_1f
    const-string/jumbo v28, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 361
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 362
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->removeFreeformTasks(I)V

    .line 363
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    const/16 v28, 0x1

    return v28

    .line 368
    .end local v4    # "_arg0":I
    :sswitch_20
    const-string/jumbo v28, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 370
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    if-eqz v28, :cond_10

    .line 371
    sget-object v28, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    .line 376
    :goto_10
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->reportMinimizeContainerBounds(Landroid/graphics/Rect;)V

    .line 377
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 378
    const/16 v28, 0x1

    return v28

    .line 374
    :cond_10
    const/4 v6, 0x0

    .restart local v6    # "_arg0":Landroid/graphics/Rect;
    goto :goto_10

    .line 382
    .end local v6    # "_arg0":Landroid/graphics/Rect;
    :sswitch_21
    const-string/jumbo v28, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 384
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    if-eqz v28, :cond_11

    const/4 v14, 0x1

    .line 386
    .local v14, "_arg0":Z
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    if-eqz v28, :cond_12

    .line 387
    sget-object v28, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/graphics/Rect;

    .line 393
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 394
    .restart local v21    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v21

    invoke-virtual {v0, v14, v1, v2}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->setSnapView(ZLandroid/graphics/Rect;I)V

    .line 395
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 396
    const/16 v28, 0x1

    return v28

    .line 384
    .end local v14    # "_arg0":Z
    .end local v21    # "_arg2":I
    :cond_11
    const/4 v14, 0x0

    .restart local v14    # "_arg0":Z
    goto :goto_11

    .line 390
    :cond_12
    const/16 v17, 0x0

    .restart local v17    # "_arg1":Landroid/graphics/Rect;
    goto :goto_12

    .line 400
    .end local v14    # "_arg0":Z
    .end local v17    # "_arg1":Landroid/graphics/Rect;
    :sswitch_22
    const-string/jumbo v28, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 401
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->isSnapViewRunning()Z

    move-result v26

    .line 402
    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 403
    if-eqz v26, :cond_13

    const/16 v28, 0x1

    :goto_13
    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 404
    const/16 v28, 0x1

    return v28

    .line 403
    :cond_13
    const/16 v28, 0x0

    goto :goto_13

    .line 408
    .end local v26    # "_result":Z
    :sswitch_23
    const-string/jumbo v28, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 409
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->swapSnapTasks()V

    .line 410
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    const/16 v28, 0x1

    return v28

    .line 415
    :sswitch_24
    const-string/jumbo v28, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 416
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->showRecentApps()V

    .line 417
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 418
    const/16 v28, 0x1

    return v28

    .line 422
    :sswitch_25
    const-string/jumbo v28, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 423
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->completeToggleSplitScreen()V

    .line 424
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 425
    const/16 v28, 0x1

    return v28

    .line 429
    :sswitch_26
    const-string/jumbo v28, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 430
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->getImeTargetFreeformTaskId()I

    move-result v24

    .line 431
    .local v24, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 432
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 433
    const/16 v28, 0x1

    return v28

    .line 437
    .end local v24    # "_result":I
    :sswitch_27
    const-string/jumbo v28, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 439
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 440
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->getMultiWindowModeStates(I)I

    move-result v24

    .line 441
    .restart local v24    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 442
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 443
    const/16 v28, 0x1

    return v28

    .line 447
    .end local v4    # "_arg0":I
    .end local v24    # "_result":I
    :sswitch_28
    const-string/jumbo v28, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 448
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->startDividerDragging()V

    .line 449
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 450
    const/16 v28, 0x1

    return v28

    .line 454
    :sswitch_29
    const-string/jumbo v28, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 455
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->stopDividerDragging()V

    .line 456
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 457
    const/16 v28, 0x1

    return v28

    .line 461
    :sswitch_2a
    const-string/jumbo v28, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 463
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 464
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->enterFreeformTask(I)V

    .line 465
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 466
    const/16 v28, 0x1

    return v28

    .line 470
    .end local v4    # "_arg0":I
    :sswitch_2b
    const-string/jumbo v28, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 472
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    if-eqz v28, :cond_14

    .line 473
    sget-object v28, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ActivityInfo;

    .line 478
    :goto_14
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->isForceResizable(Landroid/content/pm/ActivityInfo;)Z

    move-result v26

    .line 479
    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 480
    if-eqz v26, :cond_15

    const/16 v28, 0x1

    :goto_15
    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 481
    const/16 v28, 0x1

    return v28

    .line 476
    .end local v26    # "_result":Z
    :cond_14
    const/4 v5, 0x0

    .local v5, "_arg0":Landroid/content/pm/ActivityInfo;
    goto :goto_14

    .line 480
    .end local v5    # "_arg0":Landroid/content/pm/ActivityInfo;
    .restart local v26    # "_result":Z
    :cond_15
    const/16 v28, 0x0

    goto :goto_15

    .line 485
    .end local v26    # "_result":Z
    :sswitch_2c
    const-string/jumbo v28, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 487
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    if-eqz v28, :cond_16

    .line 488
    sget-object v28, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ActivityInfo;

    .line 493
    :goto_16
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->isLaunchableForMultiInstance(Landroid/content/pm/ActivityInfo;)Z

    move-result v26

    .line 494
    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 495
    if-eqz v26, :cond_17

    const/16 v28, 0x1

    :goto_17
    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 496
    const/16 v28, 0x1

    return v28

    .line 491
    .end local v26    # "_result":Z
    :cond_16
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/pm/ActivityInfo;
    goto :goto_16

    .line 495
    .end local v5    # "_arg0":Landroid/content/pm/ActivityInfo;
    .restart local v26    # "_result":Z
    :cond_17
    const/16 v28, 0x0

    goto :goto_17

    .line 500
    .end local v26    # "_result":Z
    :sswitch_2d
    const-string/jumbo v28, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 502
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 503
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->getTopRunningTaskInfo(I)Ljava/util/List;

    move-result-object v25

    .line 504
    .restart local v25    # "_result":Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 505
    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 506
    const/16 v28, 0x1

    return v28

    .line 510
    .end local v4    # "_arg0":I
    .end local v25    # "_result":Ljava/util/List;
    :sswitch_2e
    const-string/jumbo v28, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 511
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->startFreeform()Z

    move-result v26

    .line 512
    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 513
    if-eqz v26, :cond_18

    const/16 v28, 0x1

    :goto_18
    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 514
    const/16 v28, 0x1

    return v28

    .line 513
    :cond_18
    const/16 v28, 0x0

    goto :goto_18

    .line 518
    .end local v26    # "_result":Z
    :sswitch_2f
    const-string/jumbo v28, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 519
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->minimizeTopTask()Z

    move-result v26

    .line 520
    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 521
    if-eqz v26, :cond_19

    const/16 v28, 0x1

    :goto_19
    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 522
    const/16 v28, 0x1

    return v28

    .line 521
    :cond_19
    const/16 v28, 0x0

    goto :goto_19

    .line 526
    .end local v26    # "_result":Z
    :sswitch_30
    const-string/jumbo v28, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 527
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->maximizeTopTask()Z

    move-result v26

    .line 528
    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 529
    if-eqz v26, :cond_1a

    const/16 v28, 0x1

    :goto_1a
    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 530
    const/16 v28, 0x1

    return v28

    .line 529
    :cond_1a
    const/16 v28, 0x0

    goto :goto_1a

    .line 39
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
