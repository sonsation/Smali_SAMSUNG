.class public final Lcom/samsung/android/app/music/bixby/action/BixbyCommand$Action;
.super Ljava/lang/Object;
.source "BixbyCommand.java"

# interfaces
.implements Lcom/samsung/android/app/music/bixby/action/ActionGlobalMenu;
.implements Lcom/samsung/android/app/music/bixby/action/ActionLocal;
.implements Lcom/samsung/android/app/music/bixby/action/ActionMyStation;
.implements Lcom/samsung/android/app/music/bixby/action/ActionPlayer;
.implements Lcom/samsung/android/app/music/bixby/action/ActionRadio;
.implements Lcom/samsung/android/app/music/bixby/action/ActionSearch;
.implements Lcom/samsung/android/app/music/bixby/action/ActionSettings;
.implements Lcom/samsung/android/app/music/bixby/action/ActionStore;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/bixby/action/BixbyCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Action"
.end annotation


# static fields
.field public static final LAUNCH_APP:Ljava/lang/String; = "LAUNCH_APP"

.field public static final MOVE_MAIN_TAB:Ljava/lang/String; = "MOVE_MAIN_TAB"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
