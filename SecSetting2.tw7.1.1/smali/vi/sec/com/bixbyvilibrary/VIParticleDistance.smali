.class public Lvi/sec/com/bixbyvilibrary/VIParticleDistance;
.super Ljava/lang/Object;
.source "VIParticleDistance.java"


# instance fields
.field private mDiameterParticleNotScaled:F

.field private mValTypeA:F

.field private mValTypeB:F

.field private mValTypeC:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIParticleDistance;->mValTypeA:F

    .line 24
    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIParticleDistance;->mValTypeB:F

    .line 25
    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIParticleDistance;->mValTypeC:F

    .line 26
    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIParticleDistance;->mDiameterParticleNotScaled:F

    .line 27
    return-void
.end method


# virtual methods
.method public getDiameterParticleNotScaled()F
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIParticleDistance;->mDiameterParticleNotScaled:F

    return v0
.end method

.method public getTypeB()F
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIParticleDistance;->mValTypeB:F

    return v0
.end method

.method public getTypeC()F
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIParticleDistance;->mValTypeC:F

    return v0
.end method

.method public setDiameterParticleNotScaled(F)V
    .locals 0
    .param p1, "v"    # F

    .prologue
    .line 43
    iput p1, p0, Lvi/sec/com/bixbyvilibrary/VIParticleDistance;->mDiameterParticleNotScaled:F

    .line 44
    return-void
.end method

.method public setTypeA(F)V
    .locals 0
    .param p1, "v"    # F

    .prologue
    .line 30
    iput p1, p0, Lvi/sec/com/bixbyvilibrary/VIParticleDistance;->mValTypeA:F

    return-void
.end method

.method public setTypeB(F)V
    .locals 0
    .param p1, "v"    # F

    .prologue
    .line 33
    iput p1, p0, Lvi/sec/com/bixbyvilibrary/VIParticleDistance;->mValTypeB:F

    return-void
.end method

.method public setTypeC(F)V
    .locals 0
    .param p1, "v"    # F

    .prologue
    .line 36
    iput p1, p0, Lvi/sec/com/bixbyvilibrary/VIParticleDistance;->mValTypeC:F

    return-void
.end method
