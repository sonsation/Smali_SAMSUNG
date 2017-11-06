.class public Lcom/samsung/android/app/music/support/samsung/app/TimePickerDialogCompat;
.super Ljava/lang/Object;
.source "TimePickerDialogCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/support/samsung/app/TimePickerDialogCompat$OnTimePickerDialogListener;,
        Lcom/samsung/android/app/music/support/samsung/app/TimePickerDialogCompat$SemTimePickerDialogImpl;
    }
.end annotation


# instance fields
.field private mSemTimePickerDialog:Lcom/samsung/android/app/SemTimePickerDialog;

.field private mTimePickerDialogSdlCompat:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIZLcom/samsung/android/app/music/support/samsung/app/TimePickerDialogCompat$OnTimePickerDialogListener;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I
    .param p4, "is24HourView"    # Z
    .param p5, "listener"    # Lcom/samsung/android/app/music/support/samsung/app/TimePickerDialogCompat$OnTimePickerDialogListener;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 20
    new-instance v0, Lcom/samsung/android/app/music/support/samsung/app/TimePickerDialogCompat$SemTimePickerDialogImpl;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/support/samsung/app/TimePickerDialogCompat$SemTimePickerDialogImpl;-><init>(Landroid/content/Context;IIZLcom/samsung/android/app/music/support/samsung/app/TimePickerDialogCompat$OnTimePickerDialogListener;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/support/samsung/app/TimePickerDialogCompat;->mSemTimePickerDialog:Lcom/samsung/android/app/SemTimePickerDialog;

    .line 37
    :goto_0
    return-void

    .line 23
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat;

    new-instance v5, Lcom/samsung/android/app/music/support/samsung/app/TimePickerDialogCompat$1;

    invoke-direct {v5, p0, p5}, Lcom/samsung/android/app/music/support/samsung/app/TimePickerDialogCompat$1;-><init>(Lcom/samsung/android/app/music/support/samsung/app/TimePickerDialogCompat;Lcom/samsung/android/app/music/support/samsung/app/TimePickerDialogCompat$OnTimePickerDialogListener;)V

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat;-><init>(Landroid/content/Context;IIZLcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat$OnTimePickerDialogListener;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/support/samsung/app/TimePickerDialogCompat;->mTimePickerDialogSdlCompat:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat;

    goto :goto_0
.end method


# virtual methods
.method public isShowing()Z
    .locals 1

    .prologue
    .line 70
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/samsung/android/app/music/support/samsung/app/TimePickerDialogCompat;->mSemTimePickerDialog:Lcom/samsung/android/app/SemTimePickerDialog;

    invoke-virtual {v0}, Lcom/samsung/android/app/SemTimePickerDialog;->isShowing()Z

    move-result v0

    .line 73
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/support/samsung/app/TimePickerDialogCompat;->mTimePickerDialogSdlCompat:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat;->isShowing()Z

    move-result v0

    goto :goto_0
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "titleId"    # I

    .prologue
    .line 86
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/samsung/android/app/music/support/samsung/app/TimePickerDialogCompat;->mSemTimePickerDialog:Lcom/samsung/android/app/SemTimePickerDialog;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/SemTimePickerDialog;->setTitle(I)V

    .line 91
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/support/samsung/app/TimePickerDialogCompat;->mTimePickerDialogSdlCompat:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat;->setTitle(I)V

    goto :goto_0
.end method

.method public show()V
    .locals 1

    .prologue
    .line 78
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/samsung/android/app/music/support/samsung/app/TimePickerDialogCompat;->mSemTimePickerDialog:Lcom/samsung/android/app/SemTimePickerDialog;

    invoke-virtual {v0}, Lcom/samsung/android/app/SemTimePickerDialog;->show()V

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/support/samsung/app/TimePickerDialogCompat;->mTimePickerDialogSdlCompat:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat;->show()V

    goto :goto_0
.end method
