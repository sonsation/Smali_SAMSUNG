.class public abstract Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;
.super Ljava/lang/Object;
.source "SemBioFaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/bio/face/SemBioFaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "EnrollmentCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 587
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnrollmentError(ILjava/lang/CharSequence;)V
    .locals 0
    .param p1, "errMsgId"    # I
    .param p2, "errString"    # Ljava/lang/CharSequence;

    .prologue
    .line 594
    return-void
.end method

.method public onEnrollmentHelp(ILjava/lang/CharSequence;)V
    .locals 0
    .param p1, "helpMsgId"    # I
    .param p2, "helpString"    # Ljava/lang/CharSequence;

    .prologue
    .line 605
    return-void
.end method

.method public onEnrollmentProgress(I)V
    .locals 0
    .param p1, "remaining"    # I

    .prologue
    .line 614
    return-void
.end method
