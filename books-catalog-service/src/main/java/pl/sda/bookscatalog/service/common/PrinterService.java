package pl.sda.bookscatalog.service.common;

import java.util.Collection;

/**
 * Created by jacek on 08.06.17.
 */
public interface PrinterService {
    <T> void print(Collection<T> values);

    <T> void print(T value);
}
