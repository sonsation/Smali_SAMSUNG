.class public final Lcom/samsung/android/app/music/bixby/pathrule/PathRule$State;
.super Ljava/lang/Object;
.source "PathRule.java"

# interfaces
.implements Lcom/samsung/android/app/music/bixby/pathrule/StateGlobalMenu;
.implements Lcom/samsung/android/app/music/bixby/pathrule/StateLocal;
.implements Lcom/samsung/android/app/music/bixby/pathrule/StateMyStation;
.implements Lcom/samsung/android/app/music/bixby/pathrule/StatePlayer;
.implements Lcom/samsung/android/app/music/bixby/pathrule/StateRadio;
.implements Lcom/samsung/android/app/music/bixby/pathrule/StateSearch;
.implements Lcom/samsung/android/app/music/bixby/pathrule/StateSettings;
.implements Lcom/samsung/android/app/music/bixby/pathrule/StateStore;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/bixby/pathrule/PathRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "State"
.end annotation


# static fields
.field public static final GLOBAL_MUSIC:Ljava/lang/String; = "GlobalMusic"

.field public static final MUSIC:Ljava/lang/String; = "Music"

.field public static final NLG_PRECONDITION:Ljava/lang/String; = "NLG_PRECONDITION"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
