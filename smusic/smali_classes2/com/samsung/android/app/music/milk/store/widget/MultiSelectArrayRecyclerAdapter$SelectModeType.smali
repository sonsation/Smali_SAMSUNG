.class public final enum Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter$SelectModeType;
.super Ljava/lang/Enum;
.source "MultiSelectArrayRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SelectModeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter$SelectModeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter$SelectModeType;

.field public static final enum CHECK_BOX_TYPE:Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter$SelectModeType;

.field public static final enum NORMAL_TOUCH_TYPE:Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter$SelectModeType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 144
    new-instance v0, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter$SelectModeType;

    const-string v1, "CHECK_BOX_TYPE"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter$SelectModeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter$SelectModeType;->CHECK_BOX_TYPE:Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter$SelectModeType;

    new-instance v0, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter$SelectModeType;

    const-string v1, "NORMAL_TOUCH_TYPE"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter$SelectModeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter$SelectModeType;->NORMAL_TOUCH_TYPE:Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter$SelectModeType;

    .line 143
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter$SelectModeType;

    sget-object v1, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter$SelectModeType;->CHECK_BOX_TYPE:Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter$SelectModeType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter$SelectModeType;->NORMAL_TOUCH_TYPE:Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter$SelectModeType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter$SelectModeType;->$VALUES:[Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter$SelectModeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 143
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter$SelectModeType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 143
    const-class v0, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter$SelectModeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter$SelectModeType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter$SelectModeType;
    .locals 1

    .prologue
    .line 143
    sget-object v0, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter$SelectModeType;->$VALUES:[Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter$SelectModeType;

    invoke-virtual {v0}, [Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter$SelectModeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter$SelectModeType;

    return-object v0
.end method
