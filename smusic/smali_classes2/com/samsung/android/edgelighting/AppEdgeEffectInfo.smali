.class public Lcom/samsung/android/edgelighting/AppEdgeEffectInfo;
.super Ljava/lang/Object;
.source "AppEdgeEffectInfo.java"


# instance fields
.field effectColors:[I

.field private rotateDuration:J

.field private strokeAlpha:F

.field private strokeWidth:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEffectColors()[I
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/samsung/android/edgelighting/AppEdgeEffectInfo;->effectColors:[I

    return-object v0
.end method

.method public getRotateDuration()J
    .locals 2

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/samsung/android/edgelighting/AppEdgeEffectInfo;->rotateDuration:J

    return-wide v0
.end method

.method public getStrokeAlpha()F
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/samsung/android/edgelighting/AppEdgeEffectInfo;->strokeAlpha:F

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/samsung/android/edgelighting/AppEdgeEffectInfo;->strokeWidth:F

    return v0
.end method

.method public setEffectColors([I)V
    .locals 0
    .param p1, "colors"    # [I

    .prologue
    .line 16
    iput-object p1, p0, Lcom/samsung/android/edgelighting/AppEdgeEffectInfo;->effectColors:[I

    .line 17
    return-void
.end method

.method public setRotateDuration(J)V
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 19
    iput-wide p1, p0, Lcom/samsung/android/edgelighting/AppEdgeEffectInfo;->rotateDuration:J

    .line 20
    return-void
.end method

.method public setStrokeAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    .line 23
    iput p1, p0, Lcom/samsung/android/edgelighting/AppEdgeEffectInfo;->strokeAlpha:F

    .line 24
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 0
    .param p1, "width"    # F

    .prologue
    .line 12
    iput p1, p0, Lcom/samsung/android/edgelighting/AppEdgeEffectInfo;->strokeWidth:F

    .line 13
    return-void
.end method
