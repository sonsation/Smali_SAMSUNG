.class public Lcom/android/settings/EFSProperties$KeyguardProperties;
.super Ljava/lang/Object;
.source "EFSProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/EFSProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyguardProperties"
.end annotation


# instance fields
.field public AID:[B

.field public csName:[B

.field public enabledSCP:I

.field public pinMaxLength:I

.field public pinMinLength:I

.field public pukMaxLength:I

.field public pukMinLength:I

.field public storageType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 625
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 626
    iput-object v1, p0, Lcom/android/settings/EFSProperties$KeyguardProperties;->csName:[B

    .line 627
    iput-object v1, p0, Lcom/android/settings/EFSProperties$KeyguardProperties;->AID:[B

    .line 628
    iput v0, p0, Lcom/android/settings/EFSProperties$KeyguardProperties;->storageType:I

    .line 629
    iput v0, p0, Lcom/android/settings/EFSProperties$KeyguardProperties;->enabledSCP:I

    .line 630
    iput v0, p0, Lcom/android/settings/EFSProperties$KeyguardProperties;->pinMinLength:I

    .line 631
    iput v0, p0, Lcom/android/settings/EFSProperties$KeyguardProperties;->pinMaxLength:I

    .line 632
    iput v0, p0, Lcom/android/settings/EFSProperties$KeyguardProperties;->pukMinLength:I

    .line 633
    iput v0, p0, Lcom/android/settings/EFSProperties$KeyguardProperties;->pukMaxLength:I

    .line 625
    return-void
.end method
