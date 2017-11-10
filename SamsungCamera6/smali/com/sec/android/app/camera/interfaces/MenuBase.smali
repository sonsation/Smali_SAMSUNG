.class public interface abstract Lcom/sec/android/app/camera/interfaces/MenuBase;
.super Ljava/lang/Object;
.source "MenuBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;,
        Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;
    }
.end annotation


# static fields
.field public static final Z_LEVEL_0:I = 0x0

.field public static final Z_LEVEL_1:I = 0x1

.field public static final Z_LEVEL_10:I = 0xa

.field public static final Z_LEVEL_11:I = 0xb

.field public static final Z_LEVEL_12:I = 0xc

.field public static final Z_LEVEL_13:I = 0xd

.field public static final Z_LEVEL_14:I = 0xe

.field public static final Z_LEVEL_2:I = 0x2

.field public static final Z_LEVEL_3:I = 0x3

.field public static final Z_LEVEL_4:I = 0x4

.field public static final Z_LEVEL_5:I = 0x5

.field public static final Z_LEVEL_6:I = 0x6

.field public static final Z_LEVEL_7:I = 0x7

.field public static final Z_LEVEL_8:I = 0x8

.field public static final Z_LEVEL_9:I = 0x9

.field public static final Z_LEVEL_FULLSCREEN:I = 0x11

.field public static final Z_LEVEL_TOP:I = 0x10


# virtual methods
.method public abstract isActive()Z
.end method

.method public abstract setHideAnimation(Landroid/view/animation/Animation;)V
.end method

.method public abstract setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V
.end method

.method public abstract setOnShowListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;)V
.end method

.method public abstract setOneTimeHideAnimation(Landroid/view/animation/Animation;)V
.end method

.method public abstract setOneTimeShowAnimation(Landroid/view/animation/Animation;)V
.end method

.method public abstract setShowAnimation(Landroid/view/animation/Animation;)V
.end method
