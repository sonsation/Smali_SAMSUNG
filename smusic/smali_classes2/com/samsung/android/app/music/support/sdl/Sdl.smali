.class public Lcom/samsung/android/app/music/support/sdl/Sdl;
.super Ljava/lang/Object;
.source "Sdl.java"


# static fields
.field public static final VERSION:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDL_INT:I

    sput v0, Lcom/samsung/android/app/music/support/sdl/Sdl;->VERSION:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
