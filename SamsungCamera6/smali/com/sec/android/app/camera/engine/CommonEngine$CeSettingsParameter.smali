.class public Lcom/sec/android/app/camera/engine/CommonEngine$CeSettingsParameter;
.super Ljava/lang/Object;
.source "CommonEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/engine/CommonEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CeSettingsParameter"
.end annotation


# instance fields
.field private final mKey:I

.field private final mValue:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$CeSettingsParameter;->mKey:I

    iput p2, p0, Lcom/sec/android/app/camera/engine/CommonEngine$CeSettingsParameter;->mValue:I

    return-void
.end method


# virtual methods
.method public getKey()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$CeSettingsParameter;->mKey:I

    return v0
.end method

.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$CeSettingsParameter;->mValue:I

    return v0
.end method
