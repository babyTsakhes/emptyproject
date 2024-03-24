

@foreach ($persons as  $k=>$elem)


{{ $k+1}}</br>
   Имя {{ $elem->name }} </br>
   Фамилия {{$elem->surname}}</br>
   Отчество {{$elem->fathername}}</br>
	Email{{ $elem->email }}</br>
@endforeach